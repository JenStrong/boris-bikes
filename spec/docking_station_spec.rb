require 'DockingStation'
require 'Bike'

describe DockingStation do
  it 'can the docking station release a bike?' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'returns a working bike' do
    subject.dock(Bike.new)
    bike = subject.release_bike #this is the output of the release_bike method (the acutal bike we're getting)
    expect(bike.class).to eq Bike #expect the bike that's returned to be an object of the bike class.
    expect(bike.working?).to eq true #this is to check that the bike is working
  end

  it 'check can you dock a bike' do
    expect(subject).to respond_to(:dock) #check whether the dock function exists
    a = Bike.new #this is a new instance of the bike class (for example, Azlan's bike)
    expect(subject.dock(a)).to eq "You docked the bike!" #expect when we input a to the docking function within a new instance of the docking station, for it to return this string.
    expect(subject.bikes.last).to eq a #expect that the bike that's returned is actually Azlan's bike
  end

  it 'raising an error for releasing a bike from an empty dock' do
    expect{subject.release_bike}.to raise_error('No bikes to be released') #then when we try to relase a second bike, there isn't one there, so we want to check that an error message is being raised.
  end

  it 'raising an error for docking a bike at a full station' do
    20.times{subject.dock(Bike.new)}
    expect{ subject.dock(Bike.new) }.to raise_error('Docking station is full')
  end

end
