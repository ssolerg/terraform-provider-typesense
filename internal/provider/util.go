package provider

import (
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
