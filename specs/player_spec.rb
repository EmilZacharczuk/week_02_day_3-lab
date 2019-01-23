require("minitest/autorun")
require("minitest/rg")

require_relative("../player")

class PlayerTest < MiniTest::Test

  def setup
    @player_1 = Player.new("Jim")
  end

  def test_player_name
    assert_equal("Jim", @player_1.name)
  end

  def test_number_of_layer_lives
    assert_equal(6, @player_1.lives)
  end
end
