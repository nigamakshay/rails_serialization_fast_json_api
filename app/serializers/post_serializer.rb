# Declare the attributes which need to be serialized

class PostSerializer
  include JSONAPI::Serializer

  attribute :id
  attribute :comment
end