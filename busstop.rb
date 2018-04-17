class BusStop
  attr_accessor(:queue)

  def initialize()
    @queue = []
  end

  def add_person(people)
    @queue.push(people)
  end




end
