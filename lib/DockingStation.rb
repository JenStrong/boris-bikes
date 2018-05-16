require_relative 'Bike'

class DockingStation
  attr_reader :bike_docked

  def release_bike
    fail 'No bikes to be released' if @bike_docked.nil?
    available_bikes = nil
    available_bikes = @bike_docked
    @bike_docked = nil #now there aren't any bikes
    return available_bikes
  end

  def dock (bike)
    fail 'Docking station is full' unless @bike_docked.nil?
    @bike_docked = bike
    "You docked the bike!"
  end

end
