require("minitest/autorun")
require("minitest/rg")
require_relative("../Bus")
require_relative("../Person")

class TestBus < Minitest::Test

  def setup()
    @bus = Bus.new(22, "Ocean Terminal")
    @person = Person.new("Matilda", 102)
  end

  def test_that_bus_drives()
    assert_equal("Brum brum", @bus.drive())
  end

  def test_count_passengers()
    assert_equal(0, @bus.count_passengers())
  end

  def test_add_person_as_passeneger
    @bus.add_passenger(@person)
    assert_equal(1, @bus.count_passengers())
  end

end
