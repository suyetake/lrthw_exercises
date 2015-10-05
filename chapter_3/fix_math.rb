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

# So here I begin researching the division code lines..
