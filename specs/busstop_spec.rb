require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")
require_relative("../person")
require_relative("../busstop")


class TestBusStop < MiniTest::Test
  def setup
    @person1 = Person.new("Luis", 24)
    @person2 = Person.new("Ruairidh", 24)
    # @friends = person1, person2
    @stop1 = BusStop.new
  end

def test_add_person_queue
  @stop1.add_person(@person1)
  @stop1.add_person(@person2)
  assert_equal(2, @stop1.queue.length())
end

end
