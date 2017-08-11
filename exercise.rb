#Create an array for each item below that contains the given information:
#your favourite colours
my_fav_colours = ["red", "blue", "green", "yellow"]
puts
puts "The my_fav_colours array gave the following results #{my_fav_colours.join(', ')}"

#the age of you and your siblings/cousins/friends
age_array = [30, 21, 30, 40]
puts
puts "The age_array gave the following results #{age_array.join(', ')}"

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

puts
puts "The coin_flip array gave the following results #{coin_flip.join(', ')}"

#your three favourite performing artists

three_fav_bands = ["band one", "band two", "band three"]
puts
puts "The three_fav_bands array gave the following results #{three_fav_bands.join(', ')}"

#your favourite colours again (this time as symbols instead of strings)

my_fav_colours = [:red, :blue, :green, :yellow]
puts
puts "The my_fav_colours array gave the following results #{my_fav_colours.join(', ')}" 
