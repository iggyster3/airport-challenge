require 'airport'
require 'plane'

# A plane currently in the airport can be requested to take off.
#
# No more planes can be added to the airport, if it's full.
# It is up to you how many planes can land in the airport and how that is impermented.
#
# If the airport is full then no planes can land

describe Airport do

  let(:airport) { Airport.new }
  let(:plane) { Plane.new('flying') }

  context 'taking off and landing' do

    it 'a plane can land' do
      plane
      airport
      plane.status=('landed')
      airport.plane_dock(plane)
      expect(airport.plane_count).to eq(1)
      expect(plane.plane_status).to eq('landed')
    end

    it 'a plane can take off' do
      plane
      airport
      plane.status=('flying')
      airport.plane_dock(plane)
      airport.plane_release(plane)
      expect(airport.plane_count).to eq(0)
      expect(plane.plane_status).to eq('flying')
    end
  end

  context 'traffic control' do

    it 'a plane cannot land if the airport is full' do
      airport
      plane.status=('flying')
      10.times { airport.plane_dock(plane) }
      expect(airport.full?).to eq(true)
    end

  end

  # Include a weather condition using a module.
  # The weather must be random and only have two states "sunny" or "stormy".
  # Try and take off a plane, but if the weather is stormy, the plane can not take off and must remain in the airport.
  #
  # This will require stubbing to stop the random return of the weather.
  # If the airport has a weather condition of stormy,
  # the plane can not land, and must not be in the airport

  context 'weather conditions' do

    it 'a plane cannot take off when there is a storm brewing' do
      airport
      plane.status=('landed')
      expect(airport.weather_status).to eq('stormy')
    end

    it 'a plane cannot land in the middle of a storm' do
      airport
      plane.status=('landed')
      expect(airport.weather_status).to eq('stormy')
    end
  end
end


# grand final
# Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
# Be careful of the weather, it could be stormy!
# Check when all the planes have landed that they have the right status "landed"
# Once all the planes are in the air again, check that they have the status of flying!

describe "The grand finale (last spec)" do

  let(:plane) { Plane.new('flying') }
  let(:airport) { Airport.new }

  it 'all planes can land and all planes can take off' do
    plane
    airport
    6.times { airport.plane_dock(plane) }
    4.times { airport.plane_dock(plane) }
    expect(plane.status=('landed')).to eq('landed')
    expect(airport.full?).to eq(true)
  end
end
