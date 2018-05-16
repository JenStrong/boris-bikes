require_relative 'Bike'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes to be released' if @bikes.empty?
    return @bikes.pop()
    #return available_bikes
  end

  def dock (bike)
    fail 'Docking station is full' if @bikes.count >= 20
    @bikes.push (bike)
    "You docked the bike!"
  end

end
