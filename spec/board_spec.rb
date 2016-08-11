require 'board'

describe Board do
  subject(:board) {described_class.new}

  describe '#latitude' do
    it 'has a non null latitude' do
      expect(board.latitude).to be > 0
    end
  end

  describe '#longitude' do
    it 'has a non null longitude' do
      expect(board.longitude).to be > 0
    end
  end

  describe '#grid' do
    it 'has a number of row to equal to its longitude' do
      expect(board.grid.length).to eq (board.longitude)
    end

    it 'has row whose length equals its latitude' do
      expect(board.grid[0].length).to eq (board.latitude)
    end

    it 'has identifiable locations' do
      expect(board.grid[0][0]).to respond_to(:capitalize)
    end
  end

  describe '#place_ship' do
    it 'places a ship on the grid' do
      board.place_ship('A1')
      expect(board.grid[0][0]).to eq ('S')
    end
  end

end
