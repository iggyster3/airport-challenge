require 'airport_controller'
require 'weather'
# When we create a new plane, it should have a "flying" status, thus planes can not be created in the airport.
#
# When we land a plane at the airport, the plane in question should have its status changed to "landed"
#
# When the plane takes of from the airport, the plane's status should become "flying"

describe Plane do

  let(:plane) { Plane.new }
  let(:airport_controller) { AirportController.new }
  let(:weather) { Weather.new }

  it 'has a flying status when created' do
    plane
    expect(plane.plane_status).to eq('flying')
  end

  it 'has a flying status when in the air' do
    plane
    expect(plane.plane_status).to eq('flying')
  end

  it 'can land at the airport' do
    plane
    weather
    airport_controller.weather_status(weather)
    expect(plane.plane_can_land(airport_controller)).not_to eq(false)

  end

  it 'can take off from the airport' do
    plane
    expect(plane.plane_status).to eq('flying')
    expect(airport_controller.weather_status(weather)).not_to eq('stormy')
  end

  it 'changes its status to flying after taking of' do

  end

end
