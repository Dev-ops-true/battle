

class Game

  attr_accessor :players, :current_turn, :opponent

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
    @opponent = player2 
  end  

    def player1
      @players.first
    end

    def player2
      @players.last
    end

  def attack(player)
    player.attack
  end

  def switch_turns
    if @current_turn == player1
      @current_turn = player2
      @opponent = player1
    elsif @current_turn == player2
        @current_turn = player1   
        @opponent = player2
    end
  end

end