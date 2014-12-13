require 'plane'
require 'airport_controller'
require 'weather'

describe AirportController do

  let(:weather) { Weather.new }
  let (:plane) { Plane.new }
  let (:airport_controller) { AirportController.new}


    it 'can send a weather status of sunny to the plane' do
      weather
      airport_controller
      plane
      expect(plane.weather_status(weather.weather_status_sunny)).to eq('sunny')
    end

    it 'can send a weather status of sunny to the plane' do
    end
end
