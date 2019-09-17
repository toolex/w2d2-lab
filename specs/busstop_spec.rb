require("minitest/autorun")
require("minitest/rg")
require_relative("../Bus")
require_relative("../Person")
require_relative("../BusStop")

class TestBusStop < Minitest::Test

  def setup()
    @bus = Bus.new(22, "Ocean Terminal")
    @person1 = Person.new("Matilda", 102)
    @person2 = Person.new("Bob", 4)
    @person3 = Person.new("Bill", 22)
    @bus_stop = BusStop.new("Castle Terrace", [@person1, @person2])
  end

  def test_count_people()
    assert_equal(2, @bus_stop.queue_length())
  end

  def test_add_person_to_queue
    @bus_stop.add_person(@person3)
    assert_equal(3, @bus_stop.queue_length())
  end

  def test_empty_queue
    @bus_stop.empty()
    assert_equal(0, @bus_stop.queue_length())
  end
end
