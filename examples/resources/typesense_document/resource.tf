resource "typesense_document" "my-document" {
  name            = "test-document"
  collection_name = typesense_collection.test_collection.name

  document = <<EOF
{
   "field1":"testValue1",
   "field2":"testValue2"
}
EOF
}
