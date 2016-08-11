require 'player'

describe Player do
  subject(:player) {described_class.new}


  describe '#place_ship_on_board' do

    it 'changes the location of a ship' do
      ship = Ship.new(1)
      player.place_ship_on_board(ship,"A1")
      expect(player.ships).not_to include(ship)
    end
  end

  describe '#generate_ship' do
    it 'allows player to create a ship' do
      player.generate_ship(2)
      expect(player.ships.length).to eq (1)
    end
  end
end
