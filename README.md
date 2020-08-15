
Includes usage of netflix's serializer - Fast JSON API


Steps -
  * Create project
    command - rails new rails_serialization_fast_json_api --api

  * Add model User
    command - rails g model User first_name last_name email

  * Add model Posts
    command - rails g model Post comment user:belongs_to    
  
  * Create DB
    command - rake db:migrate

  * Add Users controller
    command - rails g controller Users 

  * Add gems in Gemfile   
    gem 'oj' #Json parser
    gem 'fast_jsonapi' #Serializer

  * Install bundle
    command - bundle install

  * Add index method in UsersController
  
  * Add serializers under app/serializers
    UserSerializer, it also has an attribute :posts and define a method "posts" which uses PostSerializer for all posts for the user
    PostSerializer

  * Add route for UserController index method
    In routes.rb - resources :users, only: [:index]


Sample output - 
GET - http://localhost:3000/users/

{
    "data": [
        {
            "id": "1",
            "type": "user",
            "attributes": {
                "first_name": "Akshay",
                "last_name": "Nigam",
                "email": "akshay@gmail.com",
                "posts": [
                    {
                        "id": 1,
                        "comment": "LOL",
                        "user_id": 1,
                        "created_at": "2020-08-16T00:00:00.000Z",
                        "updated_at": "2020-08-16T00:00:00.000Z"
                    }
                ]
            }
        }
    ]
}



