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

get("/square_root/results") do
  @the_num = params.fetch("user_num")

  @the_result = Math.sqrt(@the_num.to_f)

  erb(:square_root_results)
end

get("/payment/new") do
  erb(:payment_calc)
end

get("/payment/results") do
  apr = params.fetch("user_apr").to_f
  @apr_percentage = apr.to_fs(:percentage, { :precision => 4})

  @years = params.fetch("user_years").to_i

  principal = params.fetch("user_principal").to_f
  @principal_dollar = principal.to_fs(:currency)

  @r = apr / 100 /12
  @PV = principal
  @n = years * 12

  @numerator
  @denominator
  
  erb(:payment_results)
end
