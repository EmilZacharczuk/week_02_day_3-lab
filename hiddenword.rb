class Hiddenword
attr_reader :word, :word_array

  def initialize(word)
    @word = word
    @word_array = []
  end

  def convert_word_into_array
    @word_array = @word.split("")
    return @word_array
  end

  def convert_array_into_word
    @word_array.join("")
  end

  def hidden_word_include_guess(guess)
    @word_array.include?(guess)
  end
  # def compare_guesses_to_word(game, guess)
  #   display_array =
  #   convert_word_into_array
  #
  #   if @word_array.include?(guess) == true
  #
  #
  #
  #   return display_array.join("")
  #
  # end

  end

  # def display()
  #   # displays the hiddenword as stars unless the guessed_letters matches a guessed_letters
  #   for letter in word
  # end
# end
