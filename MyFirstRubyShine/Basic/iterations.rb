module Iterations
  require './Basic/my_first_class'
  include Robots
  class Iterator
    def iterate_collection(collection)
      @collection = collection

      @collection.each do |i|
        puts i.to_s
        puts "----------------------------------"
      end
    end
  end

  collection_printer = Iterator.new
  robots = [
      Robot.new("Botsko", 9000),
      Robot.new("Voltron", 120000),
      Robot.new("TransFormo", 69)]

  puts "All robots"
  collection_printer.iterate_collection(robots)

  selected_robots = robots.select {|robot| robot.power > 100}
  puts "Selected robots"
  collection_printer.iterate_collection(selected_robots)

  reversed_robots = robots.reverse_each
  puts "Reversed robots"
  collection_printer.iterate_collection(reversed_robots)

  first_robot = robots.first
  puts "The first robot"
  puts first_robot.to_s
end