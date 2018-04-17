require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")


class TestBus < MiniTest::Test
  def setup
    @bus = Bus.new(25, "Ocean Terminal")
  end

  def test_drive
    assert_equal("Brum brum", @bus.drive())
  end

end
