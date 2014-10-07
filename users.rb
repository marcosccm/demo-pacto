require 'sinatra'
require 'json'

get '/users' do
  content_type :json
  [{ name: "Marcos", age: 28 }].to_json
end
