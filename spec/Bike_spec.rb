require './lib/Bike.rb'

describe 'Bike' do
  it 'checks if a Bike is working' do
    expect(Bike.new).to respond_to(:working?)
  end
end
