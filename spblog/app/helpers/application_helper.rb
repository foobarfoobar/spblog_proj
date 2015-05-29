module ApplicationHelper
  
  def get_season
    time = Time.new
    if ( time.month >= 3 && time.month <= 5 )
      "Yeah its Spring"
    elsif ( time.month > 5 && time.month <= 8 )
      "Summertime!"
    elsif ( time.month > 8 && time.month <= 10 )
      "Autumn - awesome"
    else
      "Wintertime"
    end
  end

  # in Ruby, no return is needed
  def get_random_number(max_value = 10)
    rand(max_value)
  end

  def get_random_welcome
    opening = ["Hallo Dude.",
      "Welcome to my site!",
      "Whats up?"]
    middle = ["Hopefully you find what you need.",
      "Here's a wide selection.",
      "Looking for something?"]
    ending = ["Contact for help!",
      "Leave a message.",
      "Go away!"]
      
      "#{opening[rand(3)]} #{middle[rand(3)]} #{ending[rand(3)]}"
  end
  
  def count_to_ten
    x = 2
    number_list = "1"
    
    loop do
      number_list = number_list + ", " + x.to_s
      x += 1
      break if x > 10
    end
    "#{number_list}"
  end

end
