#Write a program in a file called exercise10.rb that loops over the numbers from 1 to 100
numbers = (1..100)
puts numbers

numbers.each do |number|
  #If the number is a multiple of three, output the string "Bit".
  if number % 3 == 0 && number % 5 == 0
      puts "Bitmaker"
  # For multiples of five, output "Maker"
  elsif number % 5 == 0
      puts "Maker"
  elsif number % 3 == 0
      puts "Bit"
  else
      puts number
  end
end


#  ========== Exercise 11 ==========
#PizzaMaker wants to handle bulk orders of pizzas, with varying amounts of toppings on each.
#Ask the user for a number of pizzas - call it quantity.
print "How many pizzas do you want? "
quantity = gets.to_i
count = 1
#We then want to ask the user for quantity more numbers -
quantity.times do
  #the number of toppings on that pizza -
  print "How many toppings for pizza #{count}? "
  amount_of_toppings = gets.chomp
  count = count + 1
  puts "You have ordered a pizza with #{amount_of_toppings} toppings"
end
