#Study Drills
---

1.  Added descriptive comments in chapter_3/ex3.rb

2.  Created new file called irb_calculator.md.  Ran 'irb' in console, pasted calculator stuff from screen into irb_calculator.md.  Used markdown table syntax to make it look good.

3.  Created new Ruby file fix_math.rb for troubleshooting the math calculation issue with integers.

4.  Most division problems will not work out to be a whole integer quotient. The result usually requires a fraction or decimal places. So integer division will always round down to the whole number of times the divisor can fit into the dividend. Remainders may be discovered by using the modulus % operator.
> So the expression:
> 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6
> = 5 + 1 - 5 + 0 - 0 + 6
> = 1 + 6 = 7
>
> 3.0 + 2.0 + 1.0 - 5.0 + 4.0 % 2.0 - 1.0 / 4.0 + 6.0
> = 5.0 + 1.0 - 5.0 + 0.0 - 0.25 + 6.0
> = 1.0 - 0.25 + 6.0 = 6.75
>
> works out to be 7 using integer division and 6.75 using floating point division.

5.  Created ex3_floating.rb to use floating point numbers for greater accuracy than the ex3.rb program. Ran both and compared that only the division line of code differred. All other integer and boolean results were the same.

https://help.github.com/articles/github-flavored-markdown

https://help.github.com/articles/markdown-basics


# Rubocop issues and fixes

##Rubocop Guard Issues:
```
Topaz-Sue:lrthw_exercises $ guard
09:13:11 - INFO - Inspecting Ruby code style of all files
Inspecting 4 files
...C

Offenses:

chapter_3/ex3.rb:13:16: C: Surrounding space missing for operator -.
puts 3 + 2 + 1 -5 + 4 % 2 - 1 / 4 + 6
               ^
chapter_3/ex3.rb:15:6: C: Prefer single-quoted strings when you don't need string interpolation or special symbols.
puts "Is it true that 3 + 2 < 5 - 7?"
     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
chapter_3/ex3.rb:24:6: C: Prefer single-quoted strings when you don't need string interpolation or special symbols.
puts "How about some more."
     ^^^^^^^^^^^^^^^^^^^^^^
chapter_3/ex3.rb:28:6: C: Prefer single-quoted strings when you don't need string interpolation or special symbols.
puts "Is it less or equal?" #{5 <= -2}"
     ^^^^^^^^^^^^^^^^^^^^^^
chapter_3/ex3.rb:28:29: C: Missing space after #.
puts "Is it less or equal?" #{5 <= -2}"
                            ^^^^^^^^^^^

4 files inspected, 5 offenses detected
```

##Rubocop Guard fixes:
changed from:
>puts 3 + 2 + 1 -5 + 4 % 2 - 1 / 4 + 6

>puts "Is it true that 3 + 2 < 5 - 7?"

>puts "How about some more."

>puts "Is it less or equal?" #{5 <= -2}"

changed to:
>puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6

>puts 'Is it true that 3 + 2 < 5 - 7?'

>puts 'How about some more.'

>puts "Is it less or equal? #{5 <= -2}"

Passed:

```
(104389834_chapter_3_master) Sue Uyetake
Topaz-Sue:lrthw_exercises $ guard
09:48:39 - INFO - Inspecting Ruby code style of all files
Inspecting 4 files
....

4 files inspected, no offenses detected
09:48:39 - INFO - Guard is now watching at '/Users/Topaz/workspace/davinci_coders_t3_2015/homework/lrthw_exercises'
[1] guard(main)>
```

# More Guard offenses as code was changed..

## New Rubocop errors
```
Offenses:

chapter_3/ex3.rb:4:81: C: Line is too long. [85/80]
\# within a interpolated "" string which wanted it to be a functional operator and was
                                                                                ^^^^^
chapter_3/ex3.rb:9:81: C: Line is too long. [83/80]
\# These lines are just taking numbers and operations to pretend to be the number of
                                                                                ^^^
chapter_3/ex3.rb:35:64: C: Trailing whitespace detected.
\# WANTS to do more conscripted exercises and document them ALL.
                                                               ^
chapter_3/ex3.rb:38:67: C: Trailing whitespace detected.
\# These lines are not so useful to the reader who does not see the
                                                                  ^
chapter_3/fix_math.rb:4:53: C: Trailing whitespace detected.
\# I thought the problem was in the modulus equation,
                                                    ^
chapter_3/fix_math.rb:9:81: C: Line is too long. [95/80]
puts 'Roosters = (100 - 25 * 3 % 4) evaluates to: ' + "#{100 - 25 * 3 % 4}" + ' instead of 100'
                                                                                ^^^^^^^^^^^^^^^
chapter_3/fix_math.rb:11:81: C: Line is too long. [97/80]
puts 'The same occurs when floating point values are used, so I misunderstood the divisor order:'
                                                                                ^^^^^^^^^^^^^^^^^
chapter_3/fix_math.rb:13:81: C: Line is too long. [97/80]
puts 'Roosters = (100.0 - 25.0 * 3.0 % 4.0) still evaluates to: ' + "#{100.0 - 25.0 * 3.0 % 4.0}"
                                                                                ^^^^^^^^^^^^^^^^^
chapter_3/fix_math.rb:15:81: C: Line is too long. [102/80]
puts 'So... 3 % 4 means four goes into three none or several times and has a leftover remainder of 3.'
                                                                                ^^^^^^^^^^^^^^^^^^^^^^
chapter_3/fix_math.rb:17:81: C: Line is too long. [97/80]
puts 'probably division since integers will evaluate to whole numbers instead of decimal values.'
                                                                                ^^^^^^^^^^^^^^^^^
chapter_3/fix_math.rb:21:1: C: 1 trailing blank lines detected.

5 files inspected, 11 offenses detected
```

```
Offenses:

chapter_3/fix_math.rb:12:3: C: Operator + should be surrounded with a single space.
  + "#{3 % 4}"
  ^
chapter_3/fix_math.rb:14:3: C: Operator + should be surrounded with a single space.
  + ' instead of 100'
  ^
chapter_3/fix_math.rb:20:3: C: Operator + should be surrounded with a single space.
  + "#{100.0 - 25.0 * 3.0 % 4.0}"
```
## New Rubocop fixes
new fixes
> To eliminate the trailing space errors, I deleted the ending blank characters.

> To eliminate the line too long errors, I limited the comment lines to 80 chars.

> For the long code lines, I inserted a \ as a line continuation character.

> The line continuation did not like a two-space indent on next line for + char.

Recovered and Passed:

```
1 file inspected, 1 offense detected

11:29:27 - INFO - Inspecting Ruby code style: chapter_3/fix_math.rb
Inspecting 1 file
.

1 file inspected, no offenses detected
[1] guard(main)>
11:29:34 - INFO - Run all
11:29:34 - INFO - Inspecting Ruby code style of all files
Inspecting 5 files
.....

5 files inspected, no offenses detected
[1] guard(main)>

```


