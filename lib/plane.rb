class Plane

  attr_accessor :status

  def initialize(status)
    @status = status
  end

  def plane_status
    @status
  end

  def air
    air = 'In the air flying'
  end

end
