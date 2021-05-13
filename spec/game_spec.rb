require 'game'

describe Game do

let(:player2) { double :player2 }

  describe '#attack' do
  it 'player hp drops' do
    game = Game.new
    expect(player2).to receive(:attack)
    game.attack(player2)
  end 
end
end

