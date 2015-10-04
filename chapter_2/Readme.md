#English Question
---
1. Can you find a key combo in RubyMine to comment out a line of code? 
> Yes, in RubyMine use " command / " to comment out the line of code where your cursor resides.

#Study Drills
---

1. Find out if you were right about what the # character does and make sure you know what it's called (octothorpe or pound character).
2. Take your ex2.rb file and review each line going backward. Start at the last line, and check each word in reverse against what you should have typed.
3. Did you find more mistakes? Fix them.
4. Read what you typed above out loud, including saying each character by its name. Did you find more mistakes? Fix them.

>Did so. I caught all mistakes before running the file. Allowed "" to offend Rubocop, then corrected with ''.

#Rubocop guard offenses and corrections
---
* corrected the string chars and a blank space to fix offenses:

>00:55:46 - INFO - Inspecting Ruby code style: chapter_2/ex2.rb
>Inspecting 1 file
>C
>
>Offenses:
>
>chapter_2/ex2.rb:4:6: C: Prefer single-quoted strings when you don't need string interpolation or special symbols.
>puts "I could have code like this."  # and the comment after is ignored
>     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>chapter_2/ex2.rb:4:36: C: Unnecessary spacing detected.
>puts "I could have code like this."  # and the comment after is ignored
>                                   ^
>chapter_2/ex2.rb:9:6: C: Prefer single-quoted strings when you don't need string interpolation or special symbols.
>puts "This will run."
>     ^^^^^^^^^^^^^^^^
>
>1 file inspected, 3 offenses detected
>
>00:59:56 - INFO - Inspecting Ruby code style: chapter_2/ex2.rb
>Inspecting 1 file
>.
>
>1 file inspected, no offenses detected
>[1] guard(main)>

