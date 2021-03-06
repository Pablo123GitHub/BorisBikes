require_relative './Bike.rb'

class DockingStation

  attr_reader :capacity

  DEFAULT_CAPACITY = 20

  attr_reader :bike

  def initialize(capacity=DEFAULT_CAPACITY)

    @bike = []
    @capacity = capacity


  end
  def release_bike
    fail 'No bikes available' if empty?
    @bike.pop
  end

  def dock(bike)
    fail 'DockingStation is full' if full?
    @bike << bike

  end

private

  def full?
 @bike.count >= @capacity

  end

  def empty?
@bike.empty?
  end


end
