class Bus

  def initialize(route, destination)
    @route = route
    @destination = destination
    @passengers = []
  end

  def drive()
    return "Brum brum"
  end

end
