module Loops
  class Looper
    @@letters_array = Array.[]("A", "B", "C", "D", "E", "F",)

    def time_loop
      @i = 0
      begin
        puts "The time is: " + Time.new.inspect
        @i += 1
      end while @i < 20
    end

    def spam_loop
      @i = 0
      while @i < 20
        puts "Spam Spam Spam Spammmm"
        @i += 1
      end
    end

    def letters_loop
      @i = 0
      until @i >= 6
        puts "#{@@letters_array[@i]}"
        @i += 1
      end
    end

    def letters_loop_with_each
      (@@letters_array).each do |i|
        puts "#{i}"
      end
    end

    def numbers_loop
      for i in (0...5)
        puts i
      end
    end
  end

  loopObj = Looper.new
  loopObj.time_loop
  loopObj.spam_loop
  loopObj.letters_loop
  loopObj.letters_loop_with_each
  loopObj.numbers_loop
end