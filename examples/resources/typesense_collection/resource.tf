resource "typesense_collection" "my_collection" {
  name = "my-collection"

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
