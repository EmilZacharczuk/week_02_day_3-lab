require("minitest/autorun")
require("minitest/rg")

require_relative("../game")
require_relative("../hiddenword")

class HiddenwordTest < MiniTest::Test

  def setup
    @hiddenword = Hiddenword.new("Codeclan")
    #create a game instance
  end

  def test_hiddenword_has_word
    assert_equal("Codeclan", @hiddenword.word)
  end
end
