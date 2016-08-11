require_relative 'board'
require_relative 'ship'

class Player

  attr_reader :board, :ships, :ship

  def initialize
    @ships = [ ]
    @board = Board.new
  end

  def generate_ship(ship_size)
    @ships << Ship.new(ship_size)
  end

  def place_ship_on_board(ship, location)
    @ships.delete(ship)
    ship.move(location)
    @board.place_ship(location)
  end

  private

end
