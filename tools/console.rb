require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

fez = CarOwner.new('Fez')
khang = CarOwner.new('Khang')

ali = Mechanic.new('Ali', 'A')
marju = Mechanic.new('Marju', 'B')

car1 = Car.new('Ford', 'Fiesta', 'A', fez, ali)
car2 = Car.new('Ford', 'Focus', 'A', fez, marju)
car3 = Car.new('Honda', 'Civic', 'B', khang, ali)
car4 = Car.new('Honda', 'CRV', 'C', khang, marju)
car5 = Car.new('Toyota', 'Privia', 'B', fez, ali)
car6 = Car.new('Ferrari', 'Peng', 'A', fez, marju)
car7 = Car.new('Tesla', 'Elect', 'A', khang, marju)


binding.pry
