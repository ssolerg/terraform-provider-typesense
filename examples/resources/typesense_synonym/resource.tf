resource "typesense_synonym" "my_synonym" {
  name            = "my-synonym"
  collection_name = typesense_collection.my_collection.name
  root            = "smart phone"

  synonyms = ["iphone", "android"]
}
