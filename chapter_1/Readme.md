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


> 104389830

*If you type the exercise as it's written in the chapter, Rubocop will complain about the double quoted strings. 
> I was surprised no complaints were made. If there were complaints, I would have added backslash \ in from of the inner quotes so the compiler would treat them as strings. Alternatively, I would have place .to_s after each to see what that does to a literal string.

*In the Readme.md for this directory, explain how you got rid of the offenses. Did you fix the strings? Or did you tell Rubocop to ignore those code style violations? Why did you pick what you did?
> To get rid of some of the Guard offenses by rubocop, I added a .rubocop.yml file in the topic branch master directory with the following syntax to ensure the string offenses were ignored. But WAIT! THAT'S why the strings above had no complaints! I get it now.
* placed .rubocop.yml in master branch locally
* with this format ( 2blanks per indent ):
*
*AllCops:
*  Exclude:
*    - 'Guardfile'

> I also had to remove a trailing blank line from GEMFILE to avoid a second offense.


*Please include the Study Drills stuff in your ex1.rb file.

