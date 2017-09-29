require_relative './Bike.rb'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bike

  def initialize(capacity)

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
 @bike.count >= DEFAULT_CAPACITY

  end

  def empty?
@bike.empty?
  end


end
