require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:new_square_calc)
end

get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do
  @the_num = params.fetch("user_num")

  @the_result = @the_num.to_f ** 2
 
 erb(:square_results)
end

get("/square_root/new") do
  erb(:square_root_calc)
end
