class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def all_cars
    Car.all.select{|car| car.owner == self}
  end

  def all_mechanics
    all_cars.map{|car| car.mechanic}.uniq
  end

  def self.average_car_count
    total_cars = Car.all.count.to_f
    total_owners = @@all.count.to_f
    average = total_cars/total_owners
    average
  end

end
