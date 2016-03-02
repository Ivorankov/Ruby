module Conditions
  class Friend
    def greet
      puts "Hello, what is your name"
      input = gets
      if input.length > 1 #cuz gets gets some strange 1 symbol if you dont write anything
        puts "Nice to meet you, #{input}"
      else
        puts "Why so shy? :P"
      end
    end

    def do_small_talk
      puts "What is your favourite number"
      input = gets
      case Integer(input)
        when 0 .. 2
          puts "Very low! I dont like you very much"
        when 3 .. 6
          puts "Sweet, mine is 6!"
        when 7 .. 10
          puts "I love cookies!"
        else
          puts "You are strange"
      end
    end
  end

  friend = Friend.new
  friend.greet
  friend.do_small_talk
end