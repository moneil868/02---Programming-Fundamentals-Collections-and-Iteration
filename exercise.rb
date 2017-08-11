#Create an array for each item below that contains the given information:
#your favourite colours
my_fav_colours = ["red", "blue", "green", "yellow"]
puts
puts "The my_fav_colours array gave the following results #{my_fav_colours.join(', ')}"

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
puts
puts "The three_fav_bands array gave the following results #{three_fav_bands.join(', ')}"

#your favourite colours again (this time as symbols instead of strings)

my_fav_colours = [:red, :blue, :green, :yellow]
puts
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

  #Exercise 1
  #Print out the array of coin flips.
  puts
  puts "The coin_flip array gave the following results #{coin_flip.join(', ')}"

  #Print out the first element of the array of your favourite colours.
  puts "The first element in the my_fav_colours array is #{my_fav_colours.first}"

  #Output the sorted version of the array of your friends and family members' ages.
  puts
  puts "A sorted list of the age_array is '#{age_array.sort}'"

  #Add a new baby (0 years old) to the array of your family's ages.
  age_array << 0

  #Using the hash of movie information, access and print the year of one of the movies.
  puts "The movie Independence Day was released in #{movies.fetch(:independence_day)}"
