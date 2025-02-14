require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Howdy!</h1>
  "
end

get("/rock") do
  moves = ["rock", "paper", "scissors"]
  @our_move = "rock"
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

get("/paper") do
  moves = ["rock", "paper", "scissors"]
  @our_move = "paper"
  @com_move = moves.sample

  if @com_move == "rock"
    @outcome = "won"
  elsif @com_move == "paper"
    @outcome = "tied"
  else
    @outcome = "lost"
  end

  erb(:commentary)
end

get("/scissors") do
  moves = ["rock", "paper", "scissors"]
  @our_move = "scissors"
  @com_move = moves.sample

  if @com_move == "rock"
    @outcome = "lost"
  elsif @com_move == "paper"
    @outcome = "won"
  else
    @outcome = "tied"
  end

  erb(:commentary)
end
