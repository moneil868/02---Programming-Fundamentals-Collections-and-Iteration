#Create an array for each item below that contains the given information:
#your favourite colours
my_fav_colours = ["red", "blue", "green", "yellow"]
puts
puts "The my_fav_colours array have the following results #{my_fav_colours.join(', ')}"

#the age of you and your siblings/cousins/friends
age_array = [30, 21, 30, 40]

#flip a coin 5 times and record whether or not the result was 'heads'

coin = rand(2)
count = 0
coin_flip = []

def flip(coin)
     if coin % 2 == 0
       return "Heads"
     else
       return "Tails"
     end
 end

5.times do
  coin = rand(2)
  result = flip(coin)
  coin_flip << result
end

#your three favourite performing artists
three_fav_bands = ["band one", "band two", "band three"]
puts #to place result on new line
puts "The three_fav_bands array gave the following results #{three_fav_bands.join(', ')}"

#your favourite colours again (this time as symbols instead of strings)
my_fav_colours = [:red, :blue, :green, :yellow]
puts #to place result on new line
puts "The my_fav_colours array gave the following results #{my_fav_colours.join(', ')}"


#Create a hash for each item below that contains the given information:
#three words and their definitions
three_words = {
    :saccade => "the series of small, jerky movements of the eyes when changing focus from one point to another",
    :indignant => "feeling, characterized by, or expressing strong displeasure at something considered unjust",
    :intrepid => "resolutely fearless"
  }

#your favourite movie names and their year of creation
movies = {
    :independence_day => 1996,
    :irobot => 2004,
    :matrix => 1999
  }

#three cities of the world and their population
cities = {
    :toronto => 2800000,
    :new_york => 8538000,
    :philadelphia => 1586000
  }

#the names of your siblings/cousins/friends and their ages
siblings = {
    :michael => 32,
    :kiri => 24,
    :daveon => 33,
    :jamie_lee => 15
  }

# ======== Exercise 1 ========
#Print out the array of coin flips.
puts #to place result on new line
puts "The coin_flip array gave the following results #{coin_flip.join(', ')}"

#Print out the first element of the array of your favourite colours.
puts #to place result on new line
puts "The first element in the my_fav_colours array is #{my_fav_colours.first}"

#Output the sorted version of the array of your friends and family members' ages.
puts #to place result on new line
puts "A sorted list of the age_array is '#{age_array.sort}'"

#Add a new baby (0 years old) to the array of your family's ages.
age_array << 0

#Using the hash of movie information, access and print the year of one of the movies.
puts #to place result on new line
puts "The movie Independence Day was released in #{movies.fetch(:independence_day)}"

# ======== Exercise 2 ========
#Print out the last element of the array of your favourite colours. Note: this should work for an array of any size!
puts #to place result on new line
puts "The last colour in the my_fav_colours array is '#{my_fav_colours.last}'"

#Add a new city to the hash of cities and population.
cities[:port_of_spain] = 300000

#Reverse the array of coin flips and save it.
coin_flip = coin_flip.reverse
puts #to place result on new line
puts "The coin_flip array has been flipped to #{coin_flip}"

#Print out the population of one of the cities.
puts #to place result on new line
puts "The population for New York is #{cities[:new_york]}"

#Print out a sentence about each item in the array of performing artists.
puts #to place result on new line
three_fav_bands.each do |band|
  puts "I think '#{band}' is great!"
end

# ======== Exercise 3 ========
#Print out the first two performing artists in that array.
puts #to place result on new line
puts "The first two bands in the array three_fav_bands are #{three_fav_bands[0..1]}"

#For each of your favourite movies, print out a sentence about when the movie was released. For example:
puts #to place result on new line
movies.each do |movie, year|
  puts "#{movie} was released in #{year}"
end

#Sort and reverse the array of ages of your family. Save it and print it to the screen.
# age_array = age_array.sort
# puts "The age_array in the sorted order is #{age_array}"
# age_array = age_array.sort.reverse
# puts "The age_array in the reverse order is #{age_array}"

      #See if you can sort and reverse the array on one line!
      age_array = age_array.sort.reverse
      puts "The age_array in the sorted THEN reversed order is #{age_array}"

#Add "Beauty and the Beast" movie to your hash of movies information, but with a twist: the movie was released both in 1991 and in 2017. Print it out.
movies["Beauty and the Beast"] = "1991 and 2017"
puts #to place result on new line
puts movies

# ======== Exercise 4 ========
#Print out all of the ages of your friends/family that are less than 30 (or any number where some ages will not be printed!).
puts #to place result on new line
age_array.each do |age|
  if age < 31
    puts "This age '#{age}' is less than 31!"
  end
end

#Find and output the age of the oldest person in your friends/family array.
puts #to place result on new line
puts "The highest age in my age_array is #{age_array.max}"

#Count how many times you flipped 'heads' using the coin flips array.
puts #to place result on new line
count = 0
coin_flip.each do |heads|
  if heads.downcase == "heads"
    count = count +1
  end
end
puts "We flipped 'heads' #{count} times"

#You realize one of the performing artists in your list is no longer a favourite. Remove one of them from the array.
puts #to place result on new line
three_fav_bands.delete("band one")
puts three_fav_bands

#Pick a city in your city population hash and change its population.
puts #to place result on new line
cities[:port_of_spain] = 1000000
puts "The population for Port of Spain is now #{cities[:port_of_spain]}"

# ======== Exercise 5 ========
#Find the sum total of the population in the hash of cities.
total_population = 0
cities.each do |_city, population|
  total_population = total_population + population
end

puts #to place result on new line
puts "The total of all populations are #{total_population}"

#Using your hash containing the names of your family and friends with their ages, print out one of two messages for each depending on their age.
  #For example:
    # Martha is old.
    # Stewart is young.
    # Holly is young.
puts #to place result on new line
siblings.each do |person, age|
  if age < 18
    puts "#{person} is #{age} years old, so quite young"
  elsif age > 19 && age < 25
    puts "#{person} is #{age} years old, so a little young"
  else
    puts "#{person} is #{age} years old, so a pretty old"
  end
end

#Print out the last two colours in your array of favourite colours.
puts #to place result on new line
puts "The last two colours in the array of colours are #{my_fav_colours.last(2)}"

#Increase by 1 the age of everyone in your array of ages. Print it out.
siblings.update(siblings) do |key, value|
  value = value + 1
end

puts #to place result on new line
puts siblings

#Add two new colours to your array of favourite colours.
my_fav_colours.push("orange", "black")
puts #to place result on new line
puts "The my_fav_colours array have the following results #{my_fav_colours.join(', ')}"

# ======== Exercise 6 ONE ========
#Make a new hash that contains a list of movies for each year. Each list of movies should be an array. Below is some data you can use.

list_of_movies = {
  "1999" => "The Matrix, Star Wars: Episode 1, The Mummy",
  "2009" => "Avatar, Star Trek, District 9",
  "2019" => "How to Train Your Dragon 3, Toy Story 4, Star Wars: Episode 9"
}

#Make a new array that contains each row of the buttons on a phone. Each row should be an array.
phone_buttons = [
  ["1", "2", "3"],
  ["4", "5", "6"],
  ["7", "8", "9"],
  ["*", "0", "#"]
  ]

#Make a new array that contains information about three countries. Each country should be a hash that has a name, a continent, and whether or not it is an island.
three_country_array = [
  {:name => "Canada", :continent => "North America", :island => "no"},
  {:name => "USA", :continent => "North America", :island => "no"},
  {:name => "Jamaica", :continent => "Latin America", :island => "yes"}
]

# ======== Exercise 6 TWO ========
#Output the message "I will not skateboard in the halls" 20 times.
20.times do
  puts "I will not skateboard in the halls"
end

#Create an array consisting of the above message. It should appear in the array 20 times.
skateboard_array = []

20.times do
  skateboard_array << "I will not skateboard in the halls"
end

#Create an array consisting of the numbers between 1 and 50.
numbers_between_1_and_50 = []
count = 0

50.times do
  count = count + 1
  numbers_between_1_and_50 << count
end

#Use an each loop to find the sum of the numbers in the above array.
numbers_between_1_and_50_total = 0

numbers_between_1_and_50.each do |number|
  numbers_between_1_and_50_total = number + numbers_between_1_and_50_total
end
puts "The sum of the numbers = #{numbers_between_1_and_50_total}"

#Create a new array which has three of each number up to 50.

  #Ie. [1, 1, 1, 2, 2, 2, 3, 3, 3, ... , 50, 50, 50] and so on, up to 50.

new_array_up_to_50 = []
count = 0

50.times do
  count = count + 1
  new_array_up_to_50 << count.to_s * 3
end

puts new_array_up_to_50

#Make a new array out all of the countries from the hash in Exercise 6 that are not islands. Print out both arrays.
countries_array_from_three_country_array = []

three_country_array.each do |country|
    if country[:island] == "yes"
      countries_array_from_three_country_array = country
    end
end

puts "Original Array: "
puts three_country_array
puts #to place result on new line
puts "These countries are islands:"
puts countries_array_from_three_country_array


# ======== Exercise 7 ========
#You want to add up your expenses for the year. Create an array of numbers (integers or floats) that represents your expenses, eg: [250, 7.95, 30.95, 16.50]

expenses_array = [10.0, 20, 100, 33.45, 7.99]

#Add up the numbers and output the result.
total_expenses = 0
expenses_array.each do |item|
  total_expenses = total_expenses + item
end

puts "The total expenses were #{total_expenses}"

#Put this code into a method. The method should take an array as an argument and return the sum of the expenses in the array. Call the method twice with different arrays.

new_expenses_array = [4.50, 230, 2.10, 40, 7.99, 0.99, 20.90]


def calculate_total(target_array)
  total_expenses = 0
  target_array.each do |item|
    total_expenses = total_expenses + item
  end
  return total_expenses
end

puts "The method is being run against 'new_expenses_array', the result is $#{calculate_total(new_expenses_array)}"
puts  "The method is being run against 'expenses_array', the result is $#{calculate_total(expenses_array)}"

# ======== Exercise 8 ========
grocery_list = ["carrots", "toilet paper", "apples", "salmon", "chip", "twix", "bread", "ice-cream"]

grocery_list.each do |grocery_items|
  puts "* " + grocery_items
end


#You realize you've forgotten some rice, so add it to your list and output it again. Given that you've already output your list twice, it might be good to consider writing a method to do this. Putting frequently used chunks of code in a method lets you reuse them throughout your program without having to type them out over and over.
grocery_list << "rice"
puts grocery_list

#You lost count of how many things you need to pick up. Better output the total number of items on your list.
puts grocery_list.length

#Check to see if your list includes "bananas". If it does, output "You need to pick up bananas". Otherwise, output "You don't need to pick up bananas today".


#Display the second item in the list. (Don't forget that arrays indices start at zero!)


#It turns out that everything in this grocery store you're visiting is stored alphabetically, so to better plan out what you need to buy you should sort your grocery list and output it with asterisks again.


#After looking everywhere, you can't find the salmon. Delete it from your list and redisplay the list one last time.
