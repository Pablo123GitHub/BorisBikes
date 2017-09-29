require 'Bike'
#
# describe 'Bike' do
#   it 'checks if a Bike is working' do
#     expect(Bike.new).to respond_to(:working?)
#   end
# end

describe 'checks if a Bike is working' do
  it { expect(Bike.new).to respond_to(:working?) }
    it { expect(Bike.new).to respond_to(:report) }
end
