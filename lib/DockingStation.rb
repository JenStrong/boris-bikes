require_relative 'Bike'

class DockingStation
  attr_reader :bikes, :DEFAULT_CAPACITY

  def initialize
    @bikes = []
    @DEFAULT_CAPACITY = 20
  end

  def release_bike
    fail 'No bikes to be released' if empty?
    return @bikes.pop()
  end

  def dock (bike)
    fail 'Docking station is full' if full?
    @bikes.push (bike)
    "You docked the bike!"
  end

  private
  def full?
    @bikes.count >= @DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
