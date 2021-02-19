require "./lib/game.rb"
require "./lib/player.rb"
require "./lib/computer.rb"

describe Game do
  let(:game) { described_class.new }
  let(:player) {Player.new}
  let(:computer) {Computer.new}

  describe ".game_turn" do
    it "runs the game" do
      p = player.player_move
      c = computer.computer_move
      if p == c
        expect(game.game_turn).to eq "Draw"
      elseif p == "Rock" && c == "Scissors" || p == "Scissors" && c == "Paper" || p == "Paper" && c =="Rock"
        expect(game.game_turn).to eq "Player Wins"
      else
        expect(game.game_turn).to eq "Computer Wins"
      end
    end
  end
end
