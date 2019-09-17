require("minitest/autorun")
require("minitest/rg")
require_relative("../Bus")
require_relative("../Person")

class TestBus < Minitest::Test

  def setup()
    @bus = Bus.new(22, "Ocean Terminal")
    @person1 = Person.new("Matilda", 102)
    @person2 = Person.new("Bob", 4)
  end

  def test_that_bus_drives()
    assert_equal("Brum brum", @bus.drive())
  end

  def test_count_passengers()
    assert_equal(0, @bus.count_passengers())
  end

  def test_add_person_as_passenger
    @bus.pick_up(@person1)
    assert_equal(1, @bus.count_passengers())
  end

  def test_drop_off_passenger
    @bus.pick_up(@person1)
    @bus.pick_up(@person2)
    @bus.drop_off(@person1)
    assert_equal(1, @bus.count_passengers())
  end

  def test_bus_emptied
    @bus.pick_up(@person1)
    @bus.empty()
    assert_equal(0, @bus.count_passengers)
  end

end
