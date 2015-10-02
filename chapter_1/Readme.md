#Terminal output

>Topaz-Sue:chapter_1 $ ruby ex1.rb
>Hello World!
>Hello Again
>I like typing this.
>This is fun.
>Yay! Printing.
>I'd much rather you 'not'
>I "said" do not touch this.
>
>(104389830_chapter_1_master) Sue Uyetake
>Topaz-Sue:chapter_1 $ pwd
>/Users/Topaz/workspace/davinci_coders_t3_2015/homework/lrthw_exercises/chapter_1
>
>(104389830_chapter_1_master) Sue Uyetake
>Topaz-Sue:chapter_1 $


*If you type the exercise as it's written in the chapter, Rubocop will complain about the double quoted strings. 

>Topaz-Sue:lrthw_exercises $ guard
>04:45:38 - INFO - Inspecting Ruby code style of all files
>Inspecting 2 files
>.C
>
>Offenses:
>
>chapter_1/ex1.rb:1:6: C: Prefer single-quoted strings when you don't need string interpolation or special symbols.
>puts "Hello World!"
>     ^^^^^^^^^^^^^^
>chapter_1/ex1.rb:2:6: C: Prefer single-quoted strings when you don't need string interpolation or special symbols.
>puts "Hello Again"
>     ^^^^^^^^^^^^^
>chapter_1/ex1.rb:3:6: C: Prefer single-quoted strings when you don't need string interpolation or special symbols.
>puts "I like typing this."
>     ^^^^^^^^^^^^^^^^^^^^^
>chapter_1/ex1.rb:4:6: C: Prefer single-quoted strings when you don't need string interpolation or special symbols.
>puts "This is fun."
>     ^^^^^^^^^^^^^^
>chapter_1/ex1.rb:5:6: C: Prefer single-quoted strings when you don't need string interpolation or special symbols.
>puts "Yay! Printing."
>     ^^^^^^^^^^^^^^^^
>chapter_1/ex1.rb:8:1: C: 1 trailing blank lines detected.
>
>2 files inspected, 6 offenses detected
>
>04:45:39 - INFO - Guard is now watching at '/Users/Topaz/workspace/davinci_coders_t3_2015/homework/lrthw_exercises'
>[1] guard(main)>


*In the Readme.md for this directory, explain how you got rid of the offenses. Did you fix the strings? Or did you tell Rubocop to ignore those code style violations? Why did you pick what you did?
> To get rid of some of the Guard offenses by rubocop, I added a .rubocop.yml file in the topic branch master directory with the following syntax to ensure the string offenses were ignored. But WAIT! THAT'S why the strings above had no complaints! I get it now.
* placed .rubocop.yml in master branch locally
* with this format ( 2blanks per indent ):
*
*AllCops:
*  Exclude:
*    - 'Guardfile'

> I also had to remove a trailing blank line from GEMFILE to avoid a second offense.

> For the six offenses listed above, I changed double quotes to single quotes in five strings that did not have embedded quotes in the string. And I deleted the blank line at the end of the ex1.rb file.

>[1] guard(main)>
>22:39:46 - INFO - Run all
>22:39:46 - INFO - Inspecting Ruby code style of all files
>Inspecting 2 files
>..
>
>2 files inspected, no offenses detected
>[1] guard(main)>


#Study Drills
* print one line
* print another line
* duplicate a string
* see that # is a comment character that prevents the line from being executed.

>Topaz-Sue:chapter_1 $ ruby ex1.rb
>Hello World!
>Hello Again
>I like typing this.
>This is fun.
>Yay! Printing.
>I'd much rather you 'not'
>I "said" do not touch this.
>
>(104389830_chapter_1_master) Sue Uyetake
>Topaz-Sue:chapter_1 $ vi ex1.rb
>
>(104389830_chapter_1_master) Sue Uyetake
>puts 'Hello World!'
>Topaz-Sue:chapter_1 $ cat ex1.rb
>#puts 'Hello World!'
>puts 'Hello Again'
>#puts 'I like typing this.'
>#puts 'This is fun.'
>#puts 'Yay! Printing.'
>#puts "I'd much rather you 'not'"
>#puts 'I "said" do not touch this.'
>
>(104389830_chapter_1_master) Sue Uyetake
>Topaz-Sue:chapter_1 $ ruby ex1.rb
>Hello Again
>
>(104389830_chapter_1_master) Sue Uyetake
>Topaz-Sue:chapter_1 $ vi ex1.rb
>
>(104389830_chapter_1_master) Sue Uyetake
>Topaz-Sue:chapter_1 $ cat ex1.rb
>puts 'Hello World!'
>puts 'Hello Again'
>puts 'I like typing this.'
>puts 'This is fun.'
>puts 'Yay! Printing.'
>puts "I'd much rather you 'not'"
>puts 'I "said" do not touch this.' * 2
>
>(104389830_chapter_1_master) Sue Uyetake
>Topaz-Sue:chapter_1 $ ruby ex1.rb
>Hello World!
>Hello Again
>I like typing this.
>This is fun.
>Yay! Printing.
>I'd much rather you 'not'
>I "said" do not touch this.I "said" do not touch this.
>
>(104389830_chapter_1_master) Sue Uyetake
>Topaz-Sue:chapter_1 $
>
>Topaz-Sue:chapter_1 $ vi ex1.rb
>
>(104389830_chapter_1_master) Sue Uyetake
>Topaz-Sue:chapter_1 $ cat ex1.rb
>puts 'Hello World!'
>puts 'Hello Again'
>puts 'I like typing this.'
>puts 'This is fun.'
>puts 'Yay! Printing.'
>puts "I'd much rather you 'not'"
>puts 'I "said" do not touch this.' * 2
>puts 'I "said" do not touch this. ' * 2
>
>(104389830_chapter_1_master) Sue Uyetake
>Topaz-Sue:chapter_1 $ ruby ex1.rb
>Hello World!
>Hello Again
>I like typing this.
>This is fun.
>Yay! Printing.
>I'd much rather you 'not'
>I "said" do not touch this.I "said" do not touch this.
>I "said" do not touch this. I "said" do not touch this.
>
>(104389830_chapter_1_master) Sue Uyetake
>Topaz-Sue:chapter_1 $

