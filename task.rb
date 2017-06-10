require 'date'

class Tast < Post
  def initialize
    super
    @due_date = Time.now
  end

  def read_from_console
    puts "What to do"
    @text = STDIN.gets.chomp

    puts "When do you want do that? Enter the date in format DD.mm.yyyy"
    input = STDIN.gets.chomp
@due_date = Date.parse(input)
    end

    def to_strings
      time_string = "New File: #{@created_at.strftime("%Y,%m,%d, %H: %M: %S")} \n\r \n\r"
      deadline = "The deadline: #{@due_date}"
      return [deadline,@text,time_string]
    end
  end