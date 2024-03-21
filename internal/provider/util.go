package provider

import (
	"encoding/json"

	"github.com/hashicorp/terraform-plugin-framework-jsontypes/jsontypes"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

// convert []types.String to []string
func convertTerraformArrayToStringArray(array []types.String) []string {
	arrayString := make([]string, len(array))
	for i, item := range array {
		arrayString[i] = item.ValueString()
	}
	return arrayString
}

// convert []string to []types.String
func convertStringArrayToTerraformArray(array []string) []types.String {
	arrayString := make([]types.String, len(array))
	for i, item := range array {
		arrayString[i] = types.StringValue(item)
	}
	return arrayString
}

// parse string json to map[string]interface{}
func parseJsonStringToMap(jsonString string) (map[string]interface{}, error) {
	var result map[string]interface{}
	err := json.Unmarshal([]byte(jsonString), &result)
	if err != nil {
		return nil, err
	}
	return result, nil
}

// convert map[string]interface{} to string json
func parseMapToJsonString(data map[string]interface{}) (jsontypes.Normalized, error) {
	jsonBytes, err := json.Marshal(data)
	if err != nil {
		return jsontypes.NewNormalizedNull(), err
	}
	return jsontypes.NewNormalizedValue(string(jsonBytes)), nil
}
