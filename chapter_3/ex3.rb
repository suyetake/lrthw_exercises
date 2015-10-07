# lots of comments added

# these lines must be less than 80 chars wide
# 345678901234567890123456789012345678901234567890123456789012345678901234567890

# Here I cleverly used the escape charater to interpret the : as a literal char
# within a interpolated "" string which wanted it to be a functional operator
# and was disappointed. So it yelled that it shouldn't have had to go to the
# trouble of looking at the colon as a possible operator during interpolation.
puts "I will now count my chickens\:"

# These lines are just taking numbers and operations to pretend to be the
# number of animals residing in several sheds in a barnyard.
puts "Hens #{25 + 30 / 6}"
puts "Roosters #{100 - 25 * 3 % 4}"

# Strings help define what is sought and what is calculated.
puts 'Now I will count the eggs:'

# Instead of pretending to be a "" string that needs interpolation,
# this line simply keeps the integers in integer form and lets puts
# perform the string conversion.
puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6

# These lines give the math problem and breaks it down into steps
# for the reader's understanding. The code does not need this breakdown.
puts 'Is it true that 3 + 2 < 5 - 7?'

puts 3 + 2 < 5 - 7

puts "What is 3 + 2? #{3 + 2}"
puts "What is 5 - 7? #{5 - 7}"

# This line is activating the reader's involvement.
puts "Oh, that's why it's false."

# This line is what's known as ironic humor.. pretending the student
# WANTS to do more conscripted exercises and document them ALL.
puts 'How about some more.'

# These lines are not so useful to the reader who does not see the
# code that went into these evaluations. No transparency nor benefit
# unless you go look at the source code, which we are doing of course.
puts "is it greater? #{5 > -2}"
puts "Is it greater or equal? #{5 >= -2}"
puts "Is it less or equal? #{5 <= -2}"
