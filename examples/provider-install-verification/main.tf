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
  name                  = "adanylenko-test-collection-v2"
  default_sorting_field = ""

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
