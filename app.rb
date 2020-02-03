require 'sinatra'

get '/' do
  "Hello World"
end

get "/secret" do 
  "Shhhh its a secret"
end

get "/random-cat" do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get "/named-cat" do
  @name =  p params[:name]
  erb(:index)
end

