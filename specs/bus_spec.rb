require("minitest/autorun")
require("minitest/rg")
require_relative("../Bus")
require_relative("../Person")

class TestBus < Minitest::Test

  def setup()
    @bus = Bus.new(22, "Ocean Terminal")
  end

  def test_that_bus_drives()
    assert_equal("Brum brum", @bus.drive())
  end

end
