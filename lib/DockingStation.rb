require_relative 'Bike'

class DockingStation
  attr_reader :bike_docked


  def release_bike
    Bike.new
  end

  def dock (bike)
    @bike_docked = bike
    "You docked the bike!"
  end

end
