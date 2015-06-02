# Das Core-API enthält folgende Enumerable-Klassen: Array, Hash, Range, File und Dir.
# In Ruby 1.8 kommt noch String dazu, der in 1.9 diesen Status allerdings verloren hat.
# Dafür kommen in Ruby 1.9 Enumerator, Enumerator::Generator und Enumerator::Yielder hinzu

# Classes that include the Enumerable module gain collection capabilities
# but they must define a function called each

class Menu
  include Enumerable

  # Each provides items one at a time

  def each
    yield "pizza"
    yield "spaghetti"
    yield "salad"
    yield "bread"
    yield "water"
  end
end

menu_options = Menu.new

# We can cycle through all the options

menu_options.each do |item|
  puts "Would you like : #{item}"
end

# Check to see if we have pizza
p menu_options.find {|item| item == "pizza"}

# Return items 5 letters in length
p menu_options.select {|item| item.size <= 5}

# Reject items that meet the criteria
p menu_options.reject {|item| item.size <= 5}

# Return the first item
p menu_options.first

# Return the first 2
p menu_options.take(2)

# Return the everything except the first 2
p menu_options.drop(2)

# Return the minimum item
p menu_options.min

# Return the maximum item
p menu_options.max

# Sort the items
p menu_options.sort

# Return each item in reverse order
menu_options.reverse_each {|item| puts item}

#Range
p (1..5)        #==> 1, 2, 3, 4, 5
p (1...5)       #==> 1, 2, 3, 4
p ('a'..'d')    #==> 'a', 'b', 'c', 'd'

#$, =", "   # Array value separator
range1 = (1..10).to_a
range2 = ('bar'..'bat').to_a

puts "#{range1}"
puts "#{range2}"

# Ranges may also be used as conditional expressions. For example,
# the following code fragment prints sets of lines from standard input,
# where the first line in each set contains the word start and the last line the word end.:
# while gets
   # print if /start/../end/
# end

if ((1..10) === 5)
  puts "5 lies in (1..10)"
end

if (('a'..'j') === 'c')
  puts "c lies in ('a'..'j')"
end

# A final use of the versatile range is as an interval test:
# seeing if some value falls within the interval represented by the range.
# This is done using ===, the case equality operator.
if (('a'..'j') === 'z')
  puts "z lies in ('a'..'j')"
end


#Auf alle Elemente eines Arrays eine Operation anwenden und die Rückgabewerte sammeln: 
[1,2,3].map do |number|
  number ** 2
end #=> [1,4,9]

#Elemente ausfiltern: 
[1,2,3].reject do |number|
  number > 2
end #=> [1,2]

#Einen Array zu einem Wert reduzieren: 
foo = [1,2,3] 
foo.inject(0) do |val, number|
 val + number #?????????
end #=> 6

#Sowie beliebige Kombinationen, zum Beispiel die Summe aller Quadratzahlen eines Arrays: 
puts [1,2,3].map{ |n| n**2 }.inject(0){ |v,n| v+n } #=> 14