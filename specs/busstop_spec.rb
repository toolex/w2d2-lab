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
    @BusStop = BusStop.new("Castle Terrace", [@person1, @person2])
  end

end
