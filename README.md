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

moving to the clear decleration and print statements, let me first start off by saying this is not needed, clear statements are REALLY ANNOYING to do or make 
in fortran so i really wont even bother with them, so- ignore that part in the script, since it deals with ACHAR, ARCHAR, and hexidecimals that reaches above this tutorial, or understanding / point of the repo. below the clear statement we use a functon called `WRITE(*,*)CLEAR`, the write statement is called to write data from an input into an output, if we break this down a little you can understand it 

so the write declares that you arw writing input to output, the first `*` declares that is input, the `,` is a seperator, and the second `*` is a format to direct the formatted output into the STD output. this just pushed all the hex values and format values onto the output and formats them.

once done we then move onto formating the data using the call statement for the date and time, the call statement here executes the sub routine in the fortran code, the subroutine was the function that we called when we declared `INETGER date_time(8)` this is known as a sub routine or function (Note: This is often seen in perl as a base function being declared with the key word SUB which is written as follows **sub main() {say "hello world";}**), it executes the sub routine with additional arguments, hence the (8) which declares the values seen below which are `call date_and_time(b(1), b(2), b(3), date_time)`, the call fucntion pushed the data into the date and time sub routine named date_time, now that we have finished moving on to the functions and explaining what they do lets move onto the actuall read and user input, so to grab user input in fortran you need to declare the type of input which as you have seen we declared when we did 

```f90
program main 
	implicit none
	INTEGER :: options
end program main
```

to initalize this value we will be using the READ function to read and capture the input from the user, since we pre declared the variables data type we do not need to redeclare our block, right now the code should look like this 

```f90
program main
	implicit none
	INTEGER :: options
	integer date_time(8)
	character*10 b(3)
	! clear statement
	CHARACTER CLEAR*6
	CLEAR=CHAR(27)//'[H'//CHAR(27)//'[J'
	!
	call date_and_time(b(1), b(2), b(3), date_time)
end program main
```

to initalize the input sub routine we can do the following 

```f90
read(*,*) options
```

this will create a simple user input field, the format for read as follows into the WRITE function declared to call CLEAR

now we need to declare the IF statements to check if the user input is equal to what we have as an option to do this we do the folowing 

since we declared options as an integer, the only value that fortran will accept as a user based input value will be numbers 1-10000 until you have to reach decimal points, since we did not declare the type as a decimal, real, or any other type which is or can be dedicated to a decimal point value, which would be any number like 1.0000 or 1.134247234789234789234879234 if we do manage to input this fortran will give us this error saying fuck you this is not allowed

```
 : Please Enter a command below:
1.84737834789345789
At line 28 of file main.f90 (unit = 5, file = 'stdin')
Fortran runtime error: Bad integer for item 1 in list input

Error termination. Backtrace:
#0  0x7f89e7408bd0 in ???
#1  0x7f89e7409685 in ???
#2  0x7f89e740a25b in ???
#3  0x7f89e7635048 in ???
#4  0x7f89e76380e1 in ???
#5  0x7f89e7638cd1 in ???
#6  0x55975842e674 in ???
#7  0x55975842ee23 in ???
#8  0x7f89e724ad09 in __libc_start_main
	at ../csu/libc-start.c:308
#9  0x55975842e109 in ???
#10  0xffffffffffffffff in ???

```

lets actually get to finishing this, the following is the syntax of IF statements 

```
IF (variable == value) THEN
	print*, value
ELSE IF (variable == value) THEN
	 ! do something
END IF
```

similar to C's END IF and IF expression, lets use this in our options

```f90
program main
	implicit none
	INTEGER :: options
	integer date_time(8)
	character*10 b(3)
	! clear statement
	CHARACTER CLEAR*6
	CLEAR=CHAR(27)//'[H'//CHAR(27)//'[J'
	!
	call date_and_time(b(1), b(2), b(3), date_time)
	! i 
	! added a banner you can too
	!
	print *," ____  _____  ____  ____  ____    __    _  _     ____  _____  ____      ____  _   _  ____     _    _  ____  _  _ "
        print *,"( ___)(  _  )(  _ \(_  _)(  _ \  /__\  ( \( )___( ___)(  _  )(  _ \ ___(_  _)( )_( )( ___)___( \/\/ )(_  _)( \( )"
        print *," )__)  )(_)(  )   /  )(   )   / /(__)\  )  ((___))__)  )(_)(  )   /(___) )(   ) _ (  )__)(___))    (  _)(_  )  ( "
        print *,"(__)  (_____)(_)\_) (__) (_)\_)(__)(__)(_)\_)   (__)  (_____)(_)\_)     (__) (_) (_)(____)   (__/\__)(____)(_)\_)"
        print *,"[1] -> Get the date and time                  | [2] Leave and exit"
        print *,"-----------------------------------------------------------------------------------------------------------------"
        print *,""
        print *, ": Please Enter a command below:"
        read(*,*) options
	! applying IF conditions
	IF (options == 1) THEN
		        print *,'date_time                      values'
			print *,'----------------------------------------------------'
			print *,'year                       | ',date_time(1)
			print *,'month                      | ',date_time(2)
			print *,'day                        | ',date_time(3)
			print *,'time difference in minutes | ',date_time(4)
			print *,'hour                       | ',date_time(5)
			print *,'minute on the hour         | ',date_time(6)
			print *,'seconds of minute          | ',date_time(7)
			print *,'milliseconds of second     | ',date_time(8)
			print *,'----------SUB-DATE-COLS----|---------------------------'
			print *, 'DATE=',b(1)
			print *, 'TIME=',b(2)
			print *, 'ZONE=',b(3)
	ELSE IF (options == 2) THEN 
		print*, "[+] Goodbye :D"
	END IF
	
	
end program main

```

As you can see we have just written alot, well i did, we first start out by reading the user input as said above, which is then thrown into an IF THEN condition, IF the user inputted 1 then it will print out the date, ELSE IF the user inputted 2 THEN print goodbye and exit

lets break the first condition down, when the user inputs 1 and the program detects it by using this statement 

```f90
IF (options == 1) THEN
```
it will print out all the date formats, remmeber when we called the date_time sub routine with the integer 8 in the ()? well this was calling all types of settings fortran has pre built into its language here is a small list of the date formats we called by the integer

```
1 : year
2 : month 
3 : day 
4 : time difference in minutes
5 : hour
6 : minute on the hour 
7 : seconds of the minute 
8 : milliseconds of the second
```

hence why 8 was called in the ()

now we just format that with the defualt print statement which accepts extra variables or function / subroutine calls in the statement 

> syntax 

```f90
print*, 'year, month, day, time diofference minutes, hour, etc....', date_time(integer 1..8) 
```

*.. means 1 through 8 THIS IS NOT USABLE CODE ONLY AN EXAMPLE*

when we are finished writing everything we should have 

```f90
! program to let the user get the time or exit via using integer types and reading 
! User input 
! Example #1 
! DEV: ArkAngeL43 
!
program main 
	implicit none
	INTEGER :: options
	integer date_time(8)
    character*10 b(3)
    ! clear statement
    CHARACTER CLEAR*6
    CLEAR=CHAR(27)//'[H'//CHAR(27)//'[J'
    !
    call date_and_time(b(1), b(2), b(3), date_time)
    !
    ! using write to call the clear decimal
    WRITE(*,*)CLEAR
    ! banner 
    print *," ____  _____  ____  ____  ____    __    _  _     ____  _____  ____      ____  _   _  ____     _    _  ____  _  _ "
    print *,"( ___)(  _  )(  _ \(_  _)(  _ \  /__\  ( \( )___( ___)(  _  )(  _ \ ___(_  _)( )_( )( ___)___( \/\/ )(_  _)( \( )"
    print *," )__)  )(_)(  )   /  )(   )   / /(__)\  )  ((___))__)  )(_)(  )   /(___) )(   ) _ (  )__)(___))    (  _)(_  )  ( "
    print *,"(__)  (_____)(_)\_) (__) (_)\_)(__)(__)(_)\_)   (__)  (_____)(_)\_)     (__) (_) (_)(____)   (__/\__)(____)(_)\_)"
    print *,"[1] -> Get the date and time                  | [2] Leave and exit"
    print *,"-----------------------------------------------------------------------------------------------------------------"
    print *,""
    print *, ": Please Enter a command below:"
    read(*,*) options
    IF (options == 1.03497823897457892347895347895789345789034578943) THEN 
        print *,'date_time                      values'
        print *,'----------------------------------------------------'
        print *,'year                       | ',date_time(1)
        print *,'month                      | ',date_time(2)
        print *,'day                        | ',date_time(3)
        print *,'time difference in minutes | ',date_time(4)
        print *,'hour                       | ',date_time(5)
        print *,'minute on the hour         | ',date_time(6)
        print *,'seconds of minute          | ',date_time(7)
        print *,'milliseconds of second     | ',date_time(8)
        print *,'----------SUB-DATE-COLS----|---------------------------'
        print *, 'DATE=',b(1)
        print *, 'TIME=',b(2)
        print *, 'ZONE=',b(3)
    ELSE IF (options == 2) THEN
        print *, "Goodbye :D"
    END IF
end program main 

```

# compiling with gfortran

`gfortran main.f90 -o main`

execution 

`./main`

when  we run the program and input the option 1 we get the following output 

```
  ____  _____  ____  ____  ____    __    _  _     ____  _____  ____      ____  _   _  ____     _    _  ____  _  _ 
 ( ___)(  _  )(  _ \(_  _)(  _ \  /__\  ( \( )___( ___)(  _  )(  _ \ ___(_  _)( )_( )( ___)___( \/\/ )(_  _)( \( )
  )__)  )(_)(  )   /  )(   )   / /(__)\  )  ((___))__)  )(_)(  )   /(___) )(   ) _ (  )__)(___))    (  _)(_  )  ( 
 (__)  (_____)(_)\_) (__) (_)\_)(__)(__)(_)\_)   (__)  (_____)(_)\_)     (__) (_) (_)(____)   (__/\__)(____)(_)\_)
 [1] -> Get the date and time                  | [2] Leave and exit
 -----------------------------------------------------------------------------------------------------------------
 
 : Please Enter a command below:
1
 date_time                      values
 ----------------------------------------------------
 year                       |         2022
 month                      |            2
 day                        |           22
 time difference in minutes |         -300
 hour                       |            7
 minute on the hour         |            8
 seconds of minute          |           19
 milliseconds of second     |          675
 ----------SUB-DATE-COLS----|---------------------------
 DATE=20220222  
 TIME=070819.675
 ZONE=-0500 
```

# simple parts of fortran 

> Print statements (simple non format)

```f90
print*, ""
print*, '', value
```

> declarimg variables and data types 

```f90
INTEGER   :: variable1, vriable12
REAL      :: variable2, variable3
CHARACTER :: variable1, var9
! non list

integer name1
real name2
character name4
```

> Implicit typing 

```
implicit none
```
if implicit none is declared in a program, and a variable is not declared as a type, then the first letter will declare its type EX 

```f90
program main 
	implicit none
	la = 1
	print*, 'name -> ', la
	! automatically declares the variable type as an INTEGER because when implcit is declared it declares a list of letters which includes l as an integer
end program main
```

> reading, opening, and writing to files

A thing to note about fortran is some symbols, numbers, or letters can not be used in certian statements, an example here is the number 1 during file write, you can not use it since 1 is used as a number to open the files, read files, and close files, when you write to a file you need to declare the UNIT, which can NOT be declared as 1, Fortran uses the unit number to access the file with later read and write statements. Several files can be open at once, but each must have a different number. There is one thing to remember about numbering a file - you cannot use the number 6, as GNU Fortran reserves that number to refer to the screen.
Note that quotes enclose the filename. Also, in specifying a directory path for a file, you must use double backslashes instead of single ones. Do not put a space on either side of the colon after the drive letter. If you do not specify a drive or directory path for a file, or if you specify the same drive upon which GNU Fortran is installed but without a path, GNU Fortran will by default assume the file is located on the same drive and in the same directory from where Fortran is running.
If the named file does not already exist, Fortran will create it; if it does exist, Fortran will replace it. (So don't mistakenly give the file the same name as another important file!)



an example of opening a gile will be as follows 



```f90
program main 
	implicit none
	open(unit = 2, file = "filename.txt")
	open(unit = 3, file = "C:\\drivename\\filepath1\\filepath2\\file.txt"
	open(unit = 4, file = "/home/user/main.txt"
	open(unit = 5, file = "/usr/share/wordlists/dnsmap.txt"
	open(unit = 7, file = "filename.pdf"
end program main
```

Writing to files 

while the concept of opening a file is quite intriguing / hard to understand as to why fortran makes it or is this wacky writing to files is fairly simple, for this we will use 3 sub routines, write, open, close. 

open `opens the file`<br>
close `closes the file`<br>
write `writes to the file`<br>




