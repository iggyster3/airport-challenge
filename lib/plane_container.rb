module PlaneContainer

  DEFAULT_CAPACITY = 10

  def planes
    @planes ||= []
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def capacity=(value)
    @capacity = value
  end

  def plane_count
    planes.count
  end

  def dock(plane)
    raise "There is no more room for planes" if full?
    bikes << bike
  end

  def release(plane)
    raise "The container is empty" if empty?
    planes.delete(plane)
  end

  def release_available_planes
    planes.delete(available_planes.pop)
  end

  def release_plane
    planes.delete(broken_plane.pop)
  end

  def full?
    plane_count == capacity
  end

  def empty?
    plane_count == 0
  end

  def available_planes
  end

end
