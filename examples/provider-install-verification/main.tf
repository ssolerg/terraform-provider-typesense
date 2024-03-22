terraform {
  required_providers {
    typesense = {
      source  = "ronati/typesense"
      version = "1.0.0"
    }
  }
}

provider "typesense" {
}
resource "typesense_collection" "test_collection" {
  name = "adanylenko-test-collection-v2"

  fields {
    facet    = true
    index    = true
    name     = "ronati_product_height_imp"
    optional = true
    type     = "string"
  }

  fields {
    facet    = true
    index    = true
    name     = "test_field"
    optional = true
    type     = "string"
  }

}


resource "typesense_synonym" "test" {
  name            = "test"
  collection_name = typesense_collection.test_collection.name
  synonyms        = ["updated1", "value2", "value3"]

}

resource "typesense_document" "test" {
  name            = "test-document-2"
  collection_name = typesense_collection.test_collection.name

  document = <<EOF
{
   "ronati_product_height_imp":"testValue1Updated5",
   "test_field":"testValue2_2V4",
   "newField1":"newFieldValue1",
   "newField2":"newFieldValue2"
}
EOF
}
