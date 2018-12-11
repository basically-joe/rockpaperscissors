require("sinatra")
require("sinatra/contrib/all")
require("pry-byebug")
require_relative("models/rps_model")
also_reload("./models/*")

get "/home" do
  erb(:home)
end

get "/rps/:hand1/:hand2" do
  rps = RPSGame.check_win(params[:hand1], params[:hand2])
  @rps_output = rps
  erb(:result)
end
