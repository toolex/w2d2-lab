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

  def test_count_passengers()
    assert_equal(0, @bus.count_passengers())
  end

end
