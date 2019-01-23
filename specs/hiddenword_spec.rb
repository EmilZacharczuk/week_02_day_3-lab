require("minitest/autorun")
require("minitest/rg")

require_relative("../game")
require_relative("../hiddenword")

class HiddenwordTest < MiniTest::Test

  def setup
    @hiddenword = Hiddenword.new("Codeclan")
  end

end
