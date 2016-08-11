class Ship

  attr_reader :location, :size

  def initialize(size = 1)
    @location = ''
    @size = size
  end

  def move(location)
    @location = location
  end

end
