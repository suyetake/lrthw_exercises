|symbol | english word | function
|--- | --- | ---
|+ | plus | addition
|- | minus | subtraction
|/ | slash | division
|* | asterisk | multiplication
|% | percent | modulus (remainder from division)
|< | less-than | compare, then True or False
|> | greater-than | compare, then True or False
|<= | less-than-equal | compare, then True or False
|>= | greater-than-equal | compare, then True or False
|== | equivalence | compare, then True or False
|= | assignment, so invalid | errors about expecting end-of-input will occur

#Terminal Output
---
```
(Chapter_3_master) Sue Uyetake
Topaz-Sue:chapter_3 $ irb
2.2.3 :001 > 5+6
 => 11
2.2.3 :002 > 7-6
 => 1
2.2.3 :003 > 6-7
 => -1
2.2.3 :004 > 3/4
 => 0
2.2.3 :005 > 4/4
 => 1
2.2.3 :006 > 5/4
 => 1
2.2.3 :007 > 5%4
 => 1
2.2.3 :008 > 10%4
 => 2
2.2.3 :009 > 10 % 4
 => 2
2.2.3 :010 > 10 = 4
SyntaxError: (irb):10: syntax error, unexpected '=', expecting end-of-input
10 = 4
    ^
	from /Users/Topaz/.rvm/rubies/ruby-2.2.3/bin/irb:15:in `<main>'
2.2.3 :011 > 10=4
SyntaxError: (irb):11: syntax error, unexpected '=', expecting end-of-input
	from /Users/Topaz/.rvm/rubies/ruby-2.2.3/bin/irb:15:in `<main>'
2.2.3 :012 > exit

(104389834_chapter_3_master) Sue Uyetake
Topaz-Sue:chapter_3 $
```
```
(104389834_chapter_3_master) Sue Uyetake
Topaz-Sue:lrthw_exercises $ irb
2.2.3 :001 > 5>3
 => true
2.2.3 :002 > 5<3
 => false
2.2.3 :003 > 3>3
 => false
2.2.3 :004 > 3>=3
 => true
2.2.3 :005 > 3=>3
SyntaxError: (irb):5: syntax error, unexpected =>, expecting end-of-input
	from /Users/Topaz/.rvm/rubies/ruby-2.2.3/bin/irb:15:in `<main>'
2.2.3 :006 > 3<=3
 => true
2.2.3 :007 > exit
```
```
(104389834_chapter_3_master) Sue Uyetake
Topaz-Sue:lrthw_exercises $ irb
2.2.3 :001 > 5==5
 => true
2.2.3 :002 > 5==6
 => false
2.2.3 :003 > exit
```
