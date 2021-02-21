class Player

  def receive_input
    puts "Enter move R/P/S: "
    return gets.chomp
  end

  def validate_input(player_input)
    ['R', 'P', 'S'].each do |input|
      if input == player_input
        return true
      elsif input == ""
        return false
      end
    end
    return false
  end

  def convert_input(player_input)
    if player_input.upcase == "R"
      return "Rock"
    elsif player_input.upcase == "P"
      return "Paper"
    elsif player_input.upcase == "S"
      return "Scissors"
    end
  end

  def player_move
    player_input = receive_input()
    if validate_input(player_input) == false
      puts 'Invalid input. Try again'
      skip
      # player_input = receive_input()
    end
    player_input = convert_input(player_input)
    return player_input
  end
end
