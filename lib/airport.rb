class Airport

  DEFAULT_CAPACITY = 10

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end

  def planes
    @planes ||= []
  end

  def plane_dock(plane)
    raise "There is no more room for planes" if full?
    planes << plane
  end

  def plane_count
    planes.count
  end

  def plane_release(plane)
    planes.delete(plane)
  end

  def empty?
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def capacity=(value)
    @capacity = value
  end

  def full?
    plane_count == capacity
  end

  def weather_status
    # create an array and shuffle it and bring back either sunny or stormy
    @weather_condition = ['sunny', 'stormy'].shuffle.first

    if @weather_condition == 'sunny'
      sunny_weather_condition = @weather_condition
    end

    if @weather_condition = 'stormy'
      stormy_weather_condition = @weather_condition
    end

  end

end
