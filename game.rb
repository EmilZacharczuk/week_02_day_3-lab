class Game
  attr_reader :player, :guessed_letters

  def initialize(player)
    @player = player
    @guessed_letters = []
  end

end
