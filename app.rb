require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to Rock-Paper-Scissors!</h1>
  <p>
  </p>
  "
end

get("/rock") do
moves = ["rock","paper","scissor"]
@comp_move = moves.sample

if @comp_move == "rock"
  @outcome = "tied!"
elsif @comp_move == "paper"
  @outcome = "lost!"
else @comp_move == "scissor"
  @outcome = "won!"
end 

erb (:rock_results)

end

get("/paper") do
  moves = ["rock","paper","scissor"]
  @comp_move = moves.sample
  
  if @comp_move == "paper"
    @outcome = "tied!"
  elsif @comp_move == "scissor"
    @outcome = "lost!"
  else @comp_move == "rock"
    @outcome = "won!"
  end 
  
  erb (:paper_results)
  
  end



get("/scissors") do
  moves = ["rock","paper","scissors"]
  @comp_move = moves.sample
    
  if @comp_move == "scissors"
   @outcome = "tied!"
  elsif @comp_move == "rock"
    @outcome = "lost!"
  else @comp_move == "paper"
    @outcome = "won!"
  end 
    
  erb (:scissors_results)
    
 end
