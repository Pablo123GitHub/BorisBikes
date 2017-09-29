require 'docking_station'
describe DockingStation do
  it "expects to respond to the release_bike method" do
    expect(DockingStation.new(10)).to respond_to(:release_bike)
  end
  # it "expects to get a bike upon calling release_bike method " do
  #   expect(subject.release_bike).to be_instance_of(Bike)
  #
  # end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      # Let's not dock a bike first:
      # remember subject == DockingStation.new
      expect { DockingStation.new(10).release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'raises an error when the docking station is full' do
docking_station = DockingStation.new(DockingStation::DEFAULT_CAPACITY)

      DockingStation::DEFAULT_CAPACITY.times { docking_station.dock(Bike.new)}
      expect { docking_station.dock(Bike.new)}.to raise_error 'DockingStation is full'
    end
  end



# since the DockingStation is no longer create new Bike instaces,
# this test fails because we are no longer creating a new Bike object
  # it "expects the bike to be working " do
  #   expect(subject.release_bike.working?).to eq true
  #
  # end

  # it do
  #   is_expected.to respond_to(:dock).with(1).argument
  # end
  #
  # it { is_expected.to respond_to(:bike) }

  it "docks something " do
    bike = Bike.new
    docking_station = DockingStation.new(10)
    docking_station.dock(bike)
    expect(docking_station.bike[-1]).to match bike
  end

  describe '#initialize' do
    # it 'needs to take a capacity argument' do
    #   # Let's not dock a bike first:
    #   # remember subject == DockingStation.new
    #
    #       end
  #
  #   it "take an arg upon instanciation " do
  #   expect(DockingStation).to receive(:new).with(1)
  # end

    # expect(B).to receive(:new).with(foo: 'whatever')
      it 'has a default capacity of 20 ' do
          expect(subject.capacity).to eq 20
      end

      it 'is possible to use a different capacity example new capacity == 30 ' do

          expect(DockingStation.new(30).capacity).to eq 30
      end


  end


end
