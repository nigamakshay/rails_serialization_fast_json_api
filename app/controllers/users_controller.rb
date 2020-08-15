# Added serializer - UserSerializer to render the content

class UsersController < ApplicationController

  def index
    users = User.joins(:posts)
    render json: UserSerializer.new(users).serialized_json
  end

end
