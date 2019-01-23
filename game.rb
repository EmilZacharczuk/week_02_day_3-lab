class Game
  attr_reader :player, :guessed_letters

  def initialize(player, hidden_word_object)
    @player = player
    @guessed_letters = []
  end

  def add_letter_to_guessed_letters(letter)
    return @guessed_letters.push(letter)
  end




end
