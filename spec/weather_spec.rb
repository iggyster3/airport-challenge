require 'airport_controller'

describe Weather do

  let(:airport_controller) { AirportController.new }
  let(:weather) { Weather.new }

  it "should allow setting default status of the weather to sunny" do
    weather
    expect(weather.weather_status_sunny).to eq('sunny')
  end

  it 'can send a status of sunny to the airport controller' do
    weather
    airport_controller
    expect(airport_controller.weather_status(weather.weather_status_sunny)).to eq(weather.weather_status_sunny)
  end

  it 'can send a status of stormy to the airport controller' do
    weather
    airport_controller
    expect(airport_controller.weather_status(weather.weather_status_stormy)).to eq(weather.weather_status_stormy)
  end
  
end
