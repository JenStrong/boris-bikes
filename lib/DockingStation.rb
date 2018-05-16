require_relative 'Bike'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
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
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end

end
