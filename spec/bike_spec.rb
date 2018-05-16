require 'Bike'

describe Bike do
  it 'checks if working? exists' do
    expect(subject).to respond_to(:working?)
  end
end
