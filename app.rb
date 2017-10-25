require 'sinatra'
require 'sinatra/reloader' if development?
require 'erb'


get '/name_form' do
  erb :name_form
end

post '/name_form' do
  # pick up the name from the form
  user_name = params[:name_from_form]
  # send the data to the show_name view as the 'name' variable
  erb :show_name, locals: { name: user_name }
end
