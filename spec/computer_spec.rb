require "./lib/computer.rb"

describe Computer do
  let(:computer) {described_class.new}

  describe ".computer_move" do
    it 'returns the computers move' do
      expect(computer.computer_move).to eq("Rock").or eq("Paper").or eq("Scissors")
    end
  end
end
