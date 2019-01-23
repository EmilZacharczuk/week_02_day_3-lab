require("minitest/autorun")
require("minitest/rg")

require_relative("../game")
require_relative("../player")

class GameTest < MiniTest::Test

  def setup
    @player_1 = Player.new("John")
    @game = Game.new(@player_1)
  end

  def test_get_game_player
    assert_equal("John", @game.player.name)
  end
end
