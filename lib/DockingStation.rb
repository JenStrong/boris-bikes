require_relative 'Bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity

  def initialize(capacity = DEFAULT_CAPACITY )
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes to be released' if empty?
    return @bikes.pop()
  end

  def dock(bike)
    fail 'Docking station is full' if full?
    @bikes.push (bike)
    "You docked the bike!"
  end

  private
  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end
