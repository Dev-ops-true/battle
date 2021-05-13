
class Player

  attr_accessor :name, :hp

  def initialize(name)
    @name = name
    @hp = 100
  end

  def attack
    @hp -= 10
  end

end