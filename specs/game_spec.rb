require("minitest/autorun")
require("minitest/rg")

require_relative("../game")
require_relative("../player")

class GameTest < MiniTest::Test

  def setup
    @hiddenword = Hiddenword.new("blah")
    @player_1 = Player.new("John")
    @game = Game.new(@player_1, @hiddenword)
  end

  def test_get_game_player
    assert_equal("John", @game.player.name)
  end

  def test_add_letters_to_guessed_letters
    @game.add_letter_to_guessed_letters('a')
    assert_equal(['a'], @game.guessed_letters)
  end
end
