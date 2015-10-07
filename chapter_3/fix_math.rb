# I did this troubleshooting in the main ruby program,
# then pasted here per Study Drills instruction

# these lines must be less than 80 chars wide
# 345678901234567890123456789012345678901234567890123456789012345678901234567890

# I thought the problem was in the modulus equation,
# but discovered by trials and experimentation that
# modulus behaves fine.
puts
puts 'At first glance, math seems to be wrong: 3 % 4 evaluates as '\
 + "#{3 % 4}"
puts 'Roosters = (100 - 25 * 3 % 4) evaluates to: ' + "#{100 - 25 * 3 % 4}"\
 + ' instead of 100'
puts
puts 'The same occurs when floating point values are used, so I \
misunderstood the divisor order:'
puts
puts 'Roosters = (100.0 - 25.0 * 3.0 % 4.0) still evaluates to: '\
 + "#{100.0 - 25.0 * 3.0 % 4.0}"
puts
puts 'So... 3 % 4 means four goes into three none or several times and has a \
leftover remainder of 3.'
puts 'okay, so there is another match function misbehaving..'
puts 'probably division since integers will evaluate to whole numbers instead \
of decimal values.'
puts

# I took the efficient way to discover the problem by writing the floating point
# program, running it, and comparing its output to the ex3 original code.
# Then I used irb to play with the numbers and how they evaluate.

# Here is some data from my irb sessions:
#
# 2.2.3 :001 > 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6
#  => 7
# 2.2.3 :002 > 4 %2
#  => 0
# 2.2.3 :003 > 1/4
#  => 0
# 2.2.3 :004 > 4%2
#  => 0
# 2.2.3 :005 > 5 + 4 % 2
#  => 5
# 2.2.3 :006 > 3 + 2 + 1 - 5
#  => 1
# 2.2.3 :007 >

# Translated into code:
puts 'Troubleshooting the line of code with division in it.'
puts
puts 'The floating point program came up with 6.75 while integer program said 7'
puts
puts '3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6 evaluates to:'
puts "#{3 + 2} \+ 1 \- 5 \+ 0 \- 0 \+ 6"
puts '= 1 + 6 = 7'
puts
puts '3.0 + 2.0 + 1.0 - 5.0 + 4.0 % 2.0 - 1.0 / 4.0 + 6.0 evaluates to:'
puts '5.0 + 1.0 - 5.0 + 0.0 - 0.25 + 6.0'
puts '= 1.0 - 0.25 + 6.0 = 6.75'
puts
puts "integer run: #{3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6}"
puts "floating point run: #{3.0 + 2.0 + 1.0 - 5.0 + 4.0 % 2.0\
 - 1.0 / 4.0 + 6.0}"
