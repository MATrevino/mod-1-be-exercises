require 'rspec'
require './lib/boat'

RSpec.describe Boat do
  describe 'boat class' do
    let(:kayak) {Boat.new(:kayak, 20)}
    it 'exists' do
      # kayak = Boat.new(:kayak, 20)
      expect(kayak).to be_a Boat
    end
    
    it 'has a type' do
      # kayak = Boat.new(:kayak, 20)
      expect(kayak.type).to eq :kayak
    end
    
    it 'has a price per hour' do
      # kayak = Boat.new(:kayak, 20)
      expect(kayak.price_per_hour).to eq(20)
    end
    
    it 'has hours rented' do 
      expect(kayak.hours_rented).to eq(0)
    end

    it 'can add hours rented' do
      kayak.add_hour
      expect(kayak.hours_rented).to eq(1)

      kayak.add_hour
      kayak.add_hour
      expect(kayak.hours_rented).to eq(3)
    end
  end
end