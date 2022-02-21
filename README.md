# fortran-notes
My personal list of fortran LINKS, URL's, NOTES, FILES, etc i use to read up on mathematical functions and programs in fortran95 2003 standard

```                                                                                        
 _____ _____ _____ _____ _____ _____ _____           ___ ___               ___ ___ ___ ___ 
|   __|     | __  |_   _| __  |  _  |   | |   ___   | . |  _|   ___ ___   |_  |   |   |_  |
|   __|  |  |    -| | | |    -|     | | | |  |___|  |_  |_  |  |___|___|  |  _| | | | |_  |
|__|  |_____|__|__| |_| |__|__|__|__|_|___|         |___|___|             |___|___|___|___|
                                                                                          
```

# why is this list on github?

for the past i believe 2-3 months ive been showing fortran programs, scripts, and its usages some people or actually quite a large amount of people in the offical scare_sec_hackers discord server, my instagram and github have been asking me for notes and usages about fortran, not just notes but people also asked me to teach them about fortrans main workings, syntax, future and past history / development, so, i decided to make a repo of all my personal notes of fortran95 and how fortran works, this will be a simple tutorial on how fortran works, the first part will be a in short explanation about fortran and its usages as well as references and links / urls that i was able to learn and understand fortran from, which actually today was a major help, 

# Why fortran?

Fortran as we all know is a language that was built during the 50's to be exact 1957 which was its public release, fortran95 while being a legacy programming language and easily replaceable with c, php, python, or GO is still a very very largly used language, this is due to its quite simple syntax and its easily understandable mathematical statements and symbols, when you first look at fortran code you may be quite suprised at how weird and wacky it is but the more you get into the language the more you will find out its not that horrid of a language, and that it is very very easy to understand given you are a programmer who specializes in fields around mathematics, engineering, or science since well thats kinda what fortran is mainly used for today. 

# Fortran simple functions and code style 

in order to first execute your own fortran program we should learn the basics of how fortran works and what file extensions go under it even compilers, so if you own a linux distribution you should have a compiler for fortran called `gfortran` this im sure you can get for windows also but im not exactly sure how it would work given i personally have not tried to write fortran on windows. to start writing our fortran program we need to initalize a file, the name of our first fortran program will be `main.f90` once you have saved that `depending on your IDE, OS, or ENV` you should see the icon change to something like as seen below 

# image 

![alt text](image.png)

# Writing your first program in fortran 

In order to properly write and compile out fortran program web obviously need to write some code, in order to do this fortran makes us start and end a program, then declare code in between those calls, the simplist program we will be doing is reading user input as a simple program, since it gives a better understanding of fortran95 in todays world, and situation. what we will be doing is naming our program as main, reading the user input, and declaring what type the user is supposed to input in this case we will use char as a integer with conditional if statements, this program will simply grab the user input, print out two options to get the time or exit, declare integers and characters, and use if statements to determine what the user inputted 

<br>

Lets first start our program 

```f90
program main 
      implicit none
      
end program main
```

this is how we start or declare a program in fortran, the function `program main` declares the program type kinda like in go how you have that as well accept its package

```go
package main
```
<br>
we use the `implicit none` function and delcaration to to inhibit a very old feature of Fortran that by default treats all variables that start with the letters i, j, k, l, m and n as integers, this means that any variable declared or used that is i, j, k, l, or m will be pre determined as a integer without proper decleration and ones that are not incldued are seen as arguments.

<br>

then we actually start declaring our types and variables like this 

```f90
   	INTEGER :: options
	   integer date_time(8)
    character*10 b(3)
    ! clear statement
    CHARACTER CLEAR*6
    CLEAR=CHAR(27)//'[H'//CHAR(27)//'[J'
    !
    call date_and_time(b(1), b(2), b(3), date_time)
```

hmmm lets break this down, first going to say that `!` is how you declare a one line note in fortran, then we have declaring types such as INTEGER, here is a side note, my fortran standard is writing or declaring variables with ALL capitals, this does not matter you can do whatever, now as you can see we have two types of decleration here as integer, one is labeled options and the other is labeled date time, the difference lies in the middle where one has `::` the other does not, why? well in this function 

```f90
INTEGER :: options
```

this declares options as a integer, but it goes a bit deeper than that, its common syntax is 

`type :: list`

the `::` symbol declares a list of objects, so if you need to declare a list of names as character's the following example would be how you use that and apply it to the `::` symbol

```f90
program main 
     CHARACTER :: Sally, mark, Chum
end program main
```

but if you need to define only a single object you can use 

```
type varname
```

as a syntax

like we have in this brick of code 

`integer date_time(8)`

moving to the clear decleration
