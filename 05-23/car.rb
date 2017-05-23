class Car
  def initialize(make)
    @speed = 0
    @make = make
    puts "You have a car! It's a #{@make}!"
  end
  def accelerate
    @speed += 1
    how_fast
  end
  def brake
    if @speed > 0
      @speed -= 1
      how_fast
    end
    puts "You are stopped"
  end
  def how_fast
    puts "You are now going #{@speed} miles per hour"
  end
end
