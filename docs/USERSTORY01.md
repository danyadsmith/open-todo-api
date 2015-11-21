# User Story 01. Return JSON Representations of Users, Lists, and Items

The process of converting a Rails object into a JSON representation is called _serializing_. 

## Task List

* Design and create User Model
* Design and create List Model
* Design and create Item Model
* Add to Gemfile: ActiveModelSerializers
* Add to Gemfile: Faker
* Modify `seeds.rb` and Seed the Database with Test Data
* From the Rails Console, confirm that:
    - `UserSerializer.new(User.first).as_json` returns the JSON representation of a User
    - `ListSerializer.new(List.first).as_json` returns the JSON representation of a List
    - `ItemSerializer.new(Item, first).as_json` returns the JSON representation of an Item
* Validate the JSON output for each Serializer using JSONLint

## Feature Branch

[https://github.com/danyadsmith/open-todo-api/tree/feature/001_ReturnJSONForModels](https://github.com/danyadsmith/open-todo-api/tree/feature/001_ReturnJSONForModels)
