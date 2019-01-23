require("minitest/autorun")
require("minitest/rg")

require_relative("../game")
require_relative("../hiddenword")
require_relative("../player")

class HiddenwordTest < MiniTest::Test

  def setup
    @hiddenword = Hiddenword.new("codeclan")
    @guess_1 = "a"
    #create a game instance
    @player_1 = Player.new("John")
    @game = Game.new(@player_1,@hiddenword)
  end

  def test_hiddenword_has_word
    assert_equal("codeclan", @hiddenword.word)
  end

  def test_convert_word_into_array
    assert_equal(["c","o","d","e","c","l","a","n"], @hiddenword.convert_word_into_array)
  end

  def test_convert_array_into_word
    @hiddenword.convert_word_into_array
    assert_equal('codeclan', @hiddenword.convert_array_into_word)
  end

  # def test_if_guessed_letters_matches_hiddenword_array
  #   @game.add_letter_to_guessed_letters("a")
  #   assert_equal("******a*", @hiddenword.compare_guesses_to_word(@game))
  # end
  #
  # def test_if_guessed_letters_matches_hiddenword_array__2_letters
  #   @game.add_letter_to_guessed_letters(@guess_1)
  #   @game.add_letter_to_guessed_letters("c")
  #   assert_equal("******a*", @hiddenword.compare_guesses_to_word(@game, @guess_1))
  # end

  def test_if_hidden_word_include_guess
    @hiddenword.convert_word_into_array

    assert_equal(true, @hiddenword.hidden_word_include_guess(@guess_1))
  end
end
