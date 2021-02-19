require "./lib/player.rb"

describe Player do
  let(:player) { described_class.new }

  # describe '.receive_input' do
  #   it 'will accept a user input' do
  #     expect(player.receive_input).is_a? String
  #   end
  # end
  #
  # describe ".validate_input" do
  #   context 'when given a value or R, P or S' do
  #     it 'will return true' do
  #       expect(player.validate_input('P')).to eq true
  #     end
  #   end
  #
  #   context 'when given any other value' do
  #     it 'will return false' do
  #       expect(player.validate_input('')).to eq false
  #     end
  #   end
  # end


  describe '.convert_input' do
    it 'will convert the players move and return value' do
      expect(player.convert_input('R')).to eq "Rock"
      expect(player.convert_input('P')).to eq "Paper"
      expect(player.convert_input('S')).to eq "Scissors"
    end
  end

  describe '.player_move' do
    it 'returns the players move' do
      expect(player.player_move).to eq("Rock").or eq("Paper").or eq("Scissors")
    end
  end
end
