require_relative './Bike.rb'

class DockingStation

  attr_reader :bike



  def release_bike
    @bike = Bike.new

  end

  def dock(bike)
    @bike = bike

  end

def foo

 raise "this is a fail "


end



end
