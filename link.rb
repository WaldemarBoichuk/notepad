class Link < Post

  def initialize
    super

    @url = ''
  end

  def read_from_console
    puts "Link address"
    @url = STDIN.gets.chomp

    puts "What's the link"
    @text = STDIN.gets.chomp

  end

  def to_string
    time_string = "New File: #{@created_at.strftime("%Y,%m,%d, %H: %M: %S")} \n\r \n\r"
    return [@url,@text, time_string]
  end

end