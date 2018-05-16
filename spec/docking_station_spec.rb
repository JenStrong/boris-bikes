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
end
