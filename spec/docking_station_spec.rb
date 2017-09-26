require './lib/docking_station.rb'
describe DockingStation do
  it "expects to respond to the release_bike method" do
  expect(DockingStation.new).to respond_to(:release_bike)
  end
end
