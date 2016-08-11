require 'ship'

describe Ship do
  subject(:ship) {described_class.new(1)}

    it {should respond_to(:location)}

    describe '#location' do
      it 'has an empty initial location' do
        expect(ship.location). to eq ('')
      end
    end

    describe '#move' do
      it 'changes the ship\'s location' do
        ship.move('A1')
        expect(ship.location). to eq('A1')
      end
    end

    describe '#ship_size' do
      it 'has a non null size' do
        expect(ship.size).to be > 0
      end
    end
end
