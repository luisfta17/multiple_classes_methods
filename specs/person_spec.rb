require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")
require_relative("../person")


class TestPerson < MiniTest::Test
  def setup
    @person1 = Person.new("Luis", 24)
  end

  def test_get_name
    assert_equal("Luis", @person1.name())
  end

end
