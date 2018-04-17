require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")
require_relative("../person")


class TestBus < MiniTest::Test
  def setup
    @person1 = Person.new("Luis", 24)
    @person2 = Person.new("Ruairidh", 24)
    @bus = Bus.new(25, "Ocean Terminal")
  end

  def test_drive
    assert_equal("Brum brum", @bus.drive())
  end

  def test_get_passengers
    assert_equal(0, @bus.passengers.length())
  end

  def test_add_passengers
    @bus.pick_up(@person1)
    assert_equal(1, @bus.passengers.length())
  end

  def test_drop_passengers
    @bus.pick_up(@person1)
    @bus.pick_up(@person2)
    @bus.drop_off(@person2)
    assert_equal(1, @bus.passengers.length())
  end

  def test_drop_all_passengers
    @bus.pick_up(@person1)
    @bus.pick_up(@person2)
    @bus.drop_all()
    assert_equal(0, @bus.passengers.length())
  end

end
