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

post "/named-cat" do
  p params
  @name =  params[:name]
  erb :index
end

get '/cat-form' do
  erb :cat_form
end



