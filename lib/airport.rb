class Airport

  DEFAULT_CAPACITY = 10

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @planes = []
  end

  def capacity
   @capacity
  end

  def planes
   @planes ||= []
  end

  def plane_count
    @planes.count
  end

  def full?
    plane_count == @capacity
  end

  def empty?
    @capacity = 0
    plane_count == @capacity
  end

  def plane_dock(plane)
    raise "There is no more room for the planes" if full?
    planes << plane
  end

  def release(plane)
    raise "The airport is emtpy" if empty?
    planes.delete(plane)
  end

end
