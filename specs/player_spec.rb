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
end
