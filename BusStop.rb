class BusStop

  attr_reader(:queue)

  def initialize(name, queue)
    @name = name
    @queue = queue
  end

  def queue_length()
    return @queue.length()
  end

  def empty()
    @queue = []
  end

  def add_person(person)
    @queue.push(person)
  end

end
