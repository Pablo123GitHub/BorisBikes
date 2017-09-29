require 'Bike'

describe Bike do
  it { expect(Bike.new).to respond_to(:working?) }
    it { expect(Bike.new).to respond_to(:report) }

  it "outputs false when bike gets reported" do
    expect(subject.report).to eq false
end
end
