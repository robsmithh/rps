class Computer

  def computer_move
    move_options = ["Rock", "Paper", "Scissors"]
    roll = rand(0..2)
    computer_move = move_options[roll]
    return computer_move
  end
end
