class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  def initialize(input_options)
    super()
    @make = input_options[:make]
    @model = input_options[:model]
    @year = input_options[:year]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize(input_options)
    super()
    @gears = input_options[:gears]
    @type = input_options[:type]
    @weight = input_options[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new(make: "Ford", model: "Fiesta", year: 2017)
car.accelerate
p car
car.honk_horn

bike = Bike.new(gears: 1, type: "Road", weight: 10)
bike.accelerate
p bike
bike.ring_bell
