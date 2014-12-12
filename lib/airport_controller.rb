class AirportController

  def initialize
    @weather = 'sunny'
    plane_can_land
  end

  def weather_status(weather)
    @weather = weather
  end

  def plane_can_land
    @land = true
  end

end
