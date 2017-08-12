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
