require 'airport'

# When we create a new plane, it should have a "flying" status, thus planes can not be created in the airport.
#
# When we land a plane at the airport, the plane in question should have its status changed to "landed"
#
# When the plane takes of from the airport, the plane's status should become "flying"

describe Plane do

  let(:plane) { Plane.new('flying') }
  let(:airport) { Airport.new }


  it 'has a flying status when created' do
    plane
    expect(plane.plane_status).to eq('flying')
  end

  it 'has a flying status when in the air' do
    plane
    plane.air
    expect(plane.plane_status).to eq('flying')
  end

  it 'can take off and change its flying status' do
    10.times { airport.plane_dock(plane) }
    plane.status=('landed')
    expect(airport.full?).to eq(true)
    plane.status=('flying')
    expect(plane.plane_status).to eq('flying')
  end

end
