class ZebraController < ApplicationController
  def ant
    render ({ :template => "game_templates/rules"})

  end
  
  def giraffe
    moves = ["rock" , "paper" , "scissors"]

    @comp_moves = moves.sample
  
    if @comp_moves == "rock"
      @outcome = "tied"
    elsif @comp_moves == "paper"
      @outcome = "lost"
    else @comp_moves == "scissors"
      @outcome = "won"
    end

    render ({ :template => "game_templates/play_rock"})
  end

  def elephant
    moves = ["rock" , "paper" , "scissors"]

    @comp_moves = moves.sample
  
    if @comp_moves == "rock"
      @outcome = "won"
    elsif @comp_moves == "paper"
      @outcome = "tied"
    else @comp_moves == "scissors"
      @outcome = "lost"
    end
    render ({ :template => "game_templates/play_paper"})
  end

  def lion
    @comp_moves = ["rock" , "paper" , "scissors"].sample
    
    if @comp_moves == "rock"
      @outcome = "lost"
    elsif @comp_moves == "paper"
      @outcome = "won"
    else @comp_moves == "scissors"
      @outcome = "tied"
    end
    
    render ({ :template => "game_templates/play_scissors"})

  end

end
