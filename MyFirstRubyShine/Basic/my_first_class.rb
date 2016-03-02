module Robots
  class Robot
    attr_accessor :name, :power
    def initialize(name, power)
      @name = name
      @power = power

    end

    def to_s
      puts "Hello my name is #{@name} and my power is #{@power}"
    end
  end
end