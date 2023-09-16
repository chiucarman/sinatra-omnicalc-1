require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:hello)
end

get("/square/new") do
  erb(:new_square_calc)
end
