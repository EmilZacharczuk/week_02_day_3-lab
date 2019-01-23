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

    # count = 0
    for letter in @word_array
      # count += 1
      # return if count == @word_array.count

      for guessed_letter in game.guessed_letters

        if letter == guessed_letter
          display_array << letter

        # else
        #   display_array << "*"
        end
         # display_array << "*"
      end

      if display_array.last != "*"
        display_array = display_array
      else
        display_array << "*" #unless theres no more letters in the array
      end # when letter's index in wordarray == wordarray[-1]

    end
    # display_array << "*"

    return display_array.join("")

  end

  end

  # def display()
  #   # displays the hiddenword as stars unless the guessed_letters matches a guessed_letters
  #   for letter in word
  # end
# end
