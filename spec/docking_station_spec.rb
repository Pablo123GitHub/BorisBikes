require 'docking_station'
describe DockingStation do
  it "expects to respond to the release_bike method" do
    expect(subject).to respond_to(:release_bike)
  end
  # it "expects to get a bike upon calling release_bike method " do
  #   expect(subject.release_bike).to be_instance_of(Bike)
  #
  # end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      # Let's not dock a bike first:
      # remember subject == DockingStation.new
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'raises an error when the docking station is full' do
      DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)}

      expect { subject.dock(Bike.new)}.to raise_error 'DockingStation is full'
    end
  end



# since the DockingStation is no longer create new Bike instaces,
# this test fails because we are no longer creating a new Bike object
  # it "expects the bike to be working " do
  #   expect(subject.release_bike.working?).to eq true
  #
  # end

  it do
    is_expected.to respond_to(:dock).with(1).argument
  end

  it { is_expected.to respond_to(:bike) }

  it "docks something " do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq [bike]
  end




end
