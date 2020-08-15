# Declare the attributes which need to be serialized
# :posts attribute is also added, this returns all posts which belong to the user
# posts method is used to deserialize all the posts for the user

class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :email, :posts
  
  private
  def posts
      PostSerializer.new(object.posts).attributes
  end  
end