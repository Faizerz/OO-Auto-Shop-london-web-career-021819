class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def all_cars_serviced
    Car.all.select{|car| car.mechanic == self}
  end

  def car_owners
    all_cars_serviced.map{|car| car.owner}.uniq
  end

  def car_owner_names
    car_owners.map{|owner| owner.name}
  end
end
