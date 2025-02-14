require "sinatra"
require "sinatra/reloader"

get("/rock") do
  moves = ["rock", "paper", "scissors"]
  @com_move = moves.sample

  if @com_move == "rock"
    @outcome = "tied"
  elsif @com_move == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end

  erb(:commentary)
end
