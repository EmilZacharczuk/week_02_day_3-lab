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

  def compare_guesses_to_word(game)
    display_array = []
    convert_word_into_array
    for letter in @word_array
      for guessed_letter in game.guessed_letters
        if letter == guessed_letter
          display_array << letter
        else
          display_array << "*"
        end
      end
    end
    return display_array.join("")
  end

  end

  # def display()
  #   # displays the hiddenword as stars unless the guessed_letters matches a guessed_letters
  #   for letter in word
  # end
# end
