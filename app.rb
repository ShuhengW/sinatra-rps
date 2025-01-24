require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

# Need this configuration for better_errors
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get("/") do

erb(:homepage)
end

get("/rock") do

  @computer_choice = ["rock", "paper", "scissors"].sample

    if @computer_choice == "rock"
      @outcome = "tied!" 
    elsif @computer_choice == "paper"
      @outcome = "lost!"
    else
      @outcome = "won!"
    end
    erb(:rock)
end

get ("/paper") do
  
    @computer_choice = ["rock", "paper", "scissors"].sample
  
    if @computer_choice == "rock"
      @outcome = "won!"
    elsif @computer_choice == "paper"
      @outcome = "tied!"
    else
      @outcome = "lost!"
    end
    erb(:paper)
  end

get ("/scissors") do
  
    @computer_choice = ["rock", "paper", "scissors"].sample
  
    if @computer_choice == "rock"
      @outcome = "lost!"
    elsif @computer_choice == "paper"
      @outcome = "won!"
    else
      @outcome = "tied!"
    end
    erb(:scissors)
  end
