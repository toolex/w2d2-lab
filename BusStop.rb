class BusStop

  def initialize(name, queue)
    @name = name
    @queue = queue
  end

  def queue_length()
    return @queue.length()
  end

  def add_person(person)
    @queue.push(person)
  end

end
