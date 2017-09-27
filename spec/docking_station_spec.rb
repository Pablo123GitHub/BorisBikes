require 'docking_station'
describe DockingStation do
  it "expects to respond to the release_bike method" do
    expect(subject).to respond_to(:release_bike)
  end
  it "expects to get a bike upon calling release_bike method " do
    expect(subject.release_bike).to be_instance_of(Bike)

  end

  it "expects the bike to be working " do
    expect(subject.release_bike.working?).to eq true

  end

  it do
    is_expected.to respond_to(:dock).with(1).argument
  end

  it { is_expected.to respond_to(:bike) }

  it "docks something " do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

    it "raises" do
    expect { DockingStation.new.foo }.to raise_error(NameError)
   end


end
