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
    player1 = Player.new(params[:'Player 1 Name']) 
    player2 = Player.new(params[:'Player 2 Name']) 
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @attacked = session[:attacked]
    @game = $game
    erb :play
  end

  post '/attack' do
    @game = $game
    @game.attack(@game.opponent)
    @game.switch_turns
    session[:attacked] = true
    erb :attack
  end

end