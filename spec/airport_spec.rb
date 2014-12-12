require 'airport'
require 'plane'
require 'airport_controller'

# A plane currently in the airport can be requested to take off.
#
# No more planes can be added to the airport, if it's full.
# It is up to you how many planes can land in the airport and how that is impermented.
#
# If the airport is full then no planes can land

describe Airport do

  let(:airport) { Airport.new(capacity: 10) }
  let (:plane) { Plane.new }
  let (:airport_controller) { AirportController}

  context 'taking off and landing' do

    it "should allow setting default capacity on initialising" do
      expect(airport.capacity).to eq(10)
    end

    it 'a plane can land when airport is not empty' do
      plane
      airport
      airport.plane_dock(plane)
      expect(airport.plane_count).to eq(1)
    end

    it 'a plane can takeoff when airport is full' do
      airport
      plane
      10.times { airport.plane_dock(plane) }
      expect(airport.plane_count).to eq(10)
      expect(airport.full?).to eq(true)
    end

    it "should know when it is empty" do
      airport
      plane
      10.times { airport.plane_dock(plane) }
      airport.release(plane)
      expect(airport.empty?).to eq(true)
      expect(airport.plane_count).to eq(0)
    end

  end
end
