#Start out by creating the following hash representing the number of students in past Bitmaker cohorts:
students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}

#Create a method that displays the name and number of students for each cohort
def display_students(hash, word)
  hash.each do |name, number|
    puts "#{name}: #{number} #{word}"
  end
end

puts #to place result on new line
display_students(students, "students")

# Add cohort 4, which had 43 students, to the hash.
students[:cohort4] = 43

# Use the keys method to output all of the cohort names.
puts #to place result on new line
puts students.keys

# The classrooms have been expanded! Increase each cohort size by 5% and display the new results.
students.update(students) do |key, value|
  value = value * 1.05
end
puts #to place result on new line
display_students(students, "students")

# Delete the 2nd cohort and redisplay the hash.
students.delete(:cohort2)
puts #to place result on new line
display_students(students, "students")

# BONUS: Calculate the total number of students across all cohorts using each and a variable to keep track of the total. Output the result.
total = 0
students.each do |key, value|
  total = total + value
end
puts #to place result on new line
puts "The total number of students across all cohorts is #{total}"

# BONUS: Create another similar hash called staff and display it using the display method from above.
staff = {
  :english => 10,
  :mathematics => 6,
  :chemistry => 10,
  :computers => 15,
}
puts #to place result on new line
display_students(staff, "teachers")
