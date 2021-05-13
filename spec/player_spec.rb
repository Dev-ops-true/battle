require 'player'

describe Player do
  
  it 'inititalizes with a name as an argument' do
    player = Player.new("player1")
  expect(player.name).to eq "player1"
  end

  it 'gives a player 100HP when initialized' do
    player = Player.new("player1")
    expect(player.hp).to eq(100)
  end  
end

