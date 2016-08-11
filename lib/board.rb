class Board

  attr_reader :latitude, :longitude, :grid
  DEFAULT_LATITUDE = 10
  DEFAULT_LONGITUDE = 10

  def initialize
    @latitude = DEFAULT_LATITUDE
    @longitude = DEFAULT_LONGITUDE
    @grid = initialize_grid(@latitude,@longitude)
  end

  def place_ship(location)
    @grid.each do |row|
      row.map! {|cell| cell == location ? 'S' : cell }
    end
  end

  private

  def initialize_grid(latitude,longitude)
    grid = []
    longitude.times do
      grid << Array.new(latitude)
    end
    name_cells(grid)
  end


  def name_cells(grid)
    number = '1'
    grid.each do |row|
      set_column_name(row)
      row.map! {|cell| cell + number }
      number = number.next
    end
    grid
  end

  def set_column_name(row)
    letter = 'a'
    for i in 0..(row.length - 1)
      row[i] = letter.capitalize
      letter = letter.next
    end
  end
end
