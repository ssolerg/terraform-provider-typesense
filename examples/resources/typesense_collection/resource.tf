resource "typesense_collection" "my_collection" {
  name                  = "my-collection"
  default_sorting_field = "" //if not needed, should be set empty string to match Typesense collection schema

  fields {
    facet    = true
    index    = true
    name     = "testFiled1"
    optional = true
    type     = "string"
  }

  fields {
    facet    = true
    index    = true
    name     = "testFiled2"
    optional = true
    type     = "int32"
  }
}
