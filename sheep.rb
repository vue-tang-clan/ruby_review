class Sheep
  @@count = 1

  def initialize
    @id = @@count
    @@count = @@count + 1
  end

  def self.print_total_sheep_made
    puts "We have made #{@@count - 1} sheep"
  end
end

bob = Sheep.new
p bob

charlie = Sheep.new
p charlie

karen = Sheep.new
p karen

# karen.print_total_sheep_made
Sheep.print_total_sheep_made
