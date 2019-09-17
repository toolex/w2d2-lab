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

  def pick_up(new_passenger)
    @passengers.push(new_passenger)
  end

  def drop_off(current_passenger)
    @passengers.delete(current_passenger)
  end

end
