require_relative "./player.rb"
require_relative "./computer.rb"

class Game

  def game_turn
    player = Player.new
    p = player.player_move
    computer = Computer.new
    c = computer.computer_move

    if p == c
      return "Draw"
    elseif p == "Rock" && c == "Scissors" || p == "Scissors" && c == "Paper" || p == "Paper" && c =="Rock"
      return "Player Wins"
    else
      return "Computer Wins"
    end
  end
end
