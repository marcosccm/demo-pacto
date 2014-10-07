require 'sinatra'
require 'faraday'
require 'json'

get '/accounts' do
  content_type :json
  users_response = Faraday.get 'http://localhost:4567/users'
  JSON.parse(users_response.body).map do |user|
    user[:account] = 50
    user
  end.to_json
end
