class Bus

  def initialize(route, destination)
    @route = route
    @destination = destination
    @passengers = []
  end

  def drive()
    return "Brum brum"
  end

  def count_passengers
    return @passengers.length()
  end

  def add_passenger(new_passenger)
    @passengers.push(new_passenger)
  end

end
