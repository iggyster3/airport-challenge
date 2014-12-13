class Weather

  def initialize
    @weather = ['sunny','stormy']
  end

  def weather_status_sunny
    @waether = @weather.fetch(0)
  end

  def weather_status_stormy
    @weather.fetch(1)
  end

end
