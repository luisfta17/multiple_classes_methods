require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")
require_relative("../person")
require_relative("../busstop")

class TestBus < MiniTest::Test
  def setup
    @person1 = Person.new("Luis", 24)
    @person2 = Person.new("Ruairidh", 24)
    @bus = Bus.new(25, "Ocean Terminal")

    @stop1 = BusStop.new
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

  def test_pick_stop
    @stop1.add_person(@person1)
    @stop1.add_person(@person2)
    @bus.pick_up_from_stop(@stop1)
    assert_equal(2, @bus.passengers.length())
    assert_equal(0, @stop1.queue.length())
  end

end
