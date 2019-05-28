require 'docking_station'

# class MockWorkingBike
#   def working?
#     true
#   end
# end
#
# class MockBrokenBike
#   def working?
#     false
#   end
# end

describe DockingStation do
  let(:mockworkingbike) { double :mockworkingbike, working?: true }
  let(:mockbrokenbike) { double :mockbrklenbike, working?: false }

  describe '#working_bike_count' do
    context '1 working bike' do
      it 'returns 1' do
        bikes = []
        bikes << mockworkingbike
        docking_station = DockingStation.new(bikes)

        expect(docking_station.working_bike_count).to eq(1)
      end
    end

    context '1 working bike, 1 broken bike' do
      it 'returns 1' do
        bikes = []
        bikes << mockworkingbike
        bikes << mockbrokenbike
        docking_station = DockingStation.new(bikes)

        expect(docking_station.working_bike_count).to eq(1)
      end
    end
  end

  describe '#random_bike_working?' do
    context 'random bike is working' do
      it 'returns true' do
        bikes = [mockworkingbike, mockbrokenbike]
        docking_station = DockingStation.new(bikes)
        allow_any_instance_of(Array).to receive(:sample).and_return(mockworkingbike)
        expect(docking_station.random_bike_working?).to eq(true)
      end
    end

    context 'random bike is broken' do
      let(:bikes) { double :bikes, sample: mockbrokenbike }
      it 'returns false' do
        #  bikes = [mockworkingbike, mockbrokenbike]
        docking_station = DockingStation.new(bikes)
        #  allow(bikes).to receive(:sample).and_return(mockbrokenbike)
        expect(docking_station.random_bike_working?).to eq(false)
      end
    end
  end
end
