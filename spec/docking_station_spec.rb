require './lib/docking_station.rb'
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

end
