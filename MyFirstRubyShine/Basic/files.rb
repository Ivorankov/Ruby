module FileSystemAccess
  class Reader
    def read_text_file(path_to_file)
      @file_to_read = File.new(path_to_file, "r")
      puts "The size of the file is: #{@file_to_read.size} bytes"
      puts "And it is located in : #{@file_to_read.path}"
      @file_to_read.close
      puts "And here is the content"
      @content = IO.readlines(path_to_file)
      @content.each do |i|
        puts i
      end
      puts "---------------------------------------------"
    end

    def write_to_text_file(path_to_file)
      @file_to_write = File.new(path_to_file, "w")
      @file_to_write.puts("Lets put some Moarr text")
      @file_to_write.close
    end
  end

  reader = Reader.new
  reader.read_text_file("./ReadMe.txt")
  reader.write_to_text_file("./ReadMe.txt")
  reader.read_text_file("./ReadMe.txt")
end