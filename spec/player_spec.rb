require 'player'

describe Player do
  it 'inititalizes with a name as an argument' do
    player = Player.new("player1")
  expect(player.name).to eq "player1"
  end
end