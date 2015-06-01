# You can add condtions to the output that proceeds it
 
age = 12
 
puts "You're Young" if age < 30
 
# --------------- CASE ---------------
 
print "Enter Greeting : "
 
# chomp removes /n from input
 
greeting = gets.chomp  # to_s geht nicht fuer case wegen \n!!
puts greeting
 
# Case is used when you have a limited number of options
 
case greeting
when "French", "french"
  puts "Bonjour"
 
  # without end it would check the next condition
  exit
 
when "Spanish", "spanish"
  puts "Hola"
  exit
 
# else is the default
else
  puts "Hello"
end
