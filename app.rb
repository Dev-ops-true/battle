require 'rack'
require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/Player'
require_relative './lib/game'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  enable :sessions

  get '/' do
    'BATTLE!!!!!!'
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:'Player 1 Name']) 
    $player2 = Player.new(params[:'Player 2 Name']) 
    redirect '/play'
  end

  get '/play' do
    @attacked = session[:attacked]
    @player1 = $player1.name
    @player2 = $player2.name
    @player1hp = $player1.hp
    @player2hp = $player2.hp
    

    erb :play
  end

  post '/attack' do
    Game.new.attack($player2)
    session[:attacked] = true
    redirect '/play'
  end

end