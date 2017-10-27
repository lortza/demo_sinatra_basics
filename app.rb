require 'sinatra'
require 'sinatra/reloader' if development?
require 'erb'
require 'json'
require 'pry'

enable :sessions

get '/name_form' do
  my_arr = [1,2,[3,4]]
  response.set_cookie( "arr", my_arr.to_json )
  erb :name_form
end

post '/name_form' do
  # pick up the user data from the form
  user_name = params[:name_from_form]
  user_city = params[:city_from_form]
  user_language = params[:language_from_form]
  # send the data to the show_name view as the 'name' variable
  erb :show_name, locals: { name: user_name, city: user_city, language: user_language }
end
