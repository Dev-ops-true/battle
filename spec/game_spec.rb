require 'game'

describe Game do

subject(:game) { described_class.new(player1, player2) }
let(:player1) { double("player1", :hp => 100, :status => "alive") }
let(:player2) { double("player2", :hp => 100, :status => "alive") }
#dbl = double("Some Collaborator", :foo => 3, :bar => 4)
  describe '#player1' do
    it 'calls player1' do
      expect(game.player1).to eq(player1)
    end
  end

  describe '#player2' do
    it 'calls player2' do
      expect(game.player2).to eq(player2)
    end
  end

  describe '#attack' do
  it 'player hp drops' do
    expect(player2).to receive(:attack)
    game.attack(player2)
    end 
  end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq(player1)
    end
  end

  describe '#switch_turns' do
    it 'switches the turns' do
      game.switch_turns
      expect(game.current_turn).to eq(player2)
    end
  end

  # Figure this out!!!!
  # describe '#game_over' do
  #   it 'diplays the loser if their HP reaches 0' do
  #     p game
  #     allow(player2).to receive(:hp).and_return(0)
  #     allow(player2).to receive(:game_over?).and_return(true)
  #     expect(game.game_over?).to eq(true)
  #   end
  # end

end

