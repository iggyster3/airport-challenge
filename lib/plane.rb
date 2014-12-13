class Plane
  def initialize
  #  @flying_status = ['flying', 'landed'].shuffle.first
  #  if @flying
    @flying_status = 'flying'
    @weather = ['sunny','stormy'].sample
  end

  def plane_status
    @flying_status
  end

  def plane_can_land(airport_controller)
      true
    # check weather with airport controller
    # if the weather is stormy keep airport flying
    # else change flying status to grounded
  end

  def plane_can_takeoff(airport_controller)
    # check weather with airport controller
    # if the weather is stormy keep airport grounded
    # else change flying status to flying
    @flying_status = 'flying'
  end

  def weather_status(airport_controller)
    if @weather == 'sunny'
      @weather = 'sunny'
    end
  end


end
