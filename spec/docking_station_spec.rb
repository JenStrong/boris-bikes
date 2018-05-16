require 'DockingStation'
require 'Bike'

describe DockingStation do
  it 'releases a bike' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'returns a working bike' do
    bike = subject.release_bike
    expect(bike.class).to eq Bike
    expect(bike.working?).to eq true
  end

  it 'check can you dock a bike' do
    expect(subject).to respond_to(:dock_a_bike)
    a = Bike.new
    expect(subject.dock_a_bike(a)).to eq "You docked the bike!"
    expect(subject.bike_docked).to eq a

  end






end
