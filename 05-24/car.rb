module Vehicle
  class Car
    include Vehicle
    attr_accessor :speed, :make
    def initialize(make)
      @speed = 0
      @make = make
      puts "You have a car! It's a #{@make}!"
    end
  end
end
