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

so lets write some data, say we want to write hello to a file 

```f90
program main
        CHARACTER name
        print*, "Enter a name: "
        read(*,*) name
        open(unit = 2, file = "main.txt")
        write(2, *) name
        close(2)
end program main
```

when we use the command `cat main.txt` which fortran created if there was no file with that name, we get the output of the first letter we input, sometimes this will bug out as the full name should be written to the file, howveer using the write function would not be the best, a better example would be as follows 

this is a simple calculator i wrote a bit back 

```f90
program calc
	implicit none
	INTEGER :: options
	REAL :: addanswer, subtractanswer
	REAL :: multiplyanswer, divisionanswer
	REAL :: a, b
	print *, " _____         _                     ___ ___ "
	print *, "|   __|___ ___| |_ ___ ___ ___ _____| . |  _|"
	print *, "|   __| . |  _|  _|  _| .'|   |_____|_  |_  |"
	print *, "|__|  |___|_| |_| |_| |__,|_|_|_____|___|___|"                                     
	print *, "-------------------------------------------------|"
	print *, "1  => calculate a basic equation                 |"
	print *, "-------------------------------------------------|"
	print *, " Please enter a command below: "
	read(*,*) options
	IF (options == 1) THEN
		print *, ''	 
		print *, '[ | ] Please input the first integer  '
		read(*,*) a
		print *, ''
		print *, '[ | ] Please input the second integer '
		read(*,*) b
		!
		addanswer = a + b
    		subtractanswer = a - b
    		multiplyanswer = a * b
    		divisionanswer = a / b
		! write to the file
		open(unit = 2, file = "output.txt")
       		!the files unit is = to 2 so i would need to make the write unit the same as 2
		print *, ''//achar(27)//'[31m '//achar(27)//'[0m'
		write(2, *) a, " + ", b, " = ", addAnswer
		write(2, *) a, " - ", b, " = ", subtractanswer
		write(2, *) a, " * ", b, " = ", multiplyanswer
       	        write(2, *) a, " / ", b, " = ", divisionanswer
		print *, "------------------------------------------------------------------------"
		close(2)
		PRINT*, "[ | ] Data written to a file |output.txt|  [ | ] "
	END IF
end program calc
```

when we finish the program and we actually find an equation to output, this is the output in output.txt 

```
  _____         _                     ___ ___ 
 |   __|___ ___| |_ ___ ___ ___ _____| . |  _|
 |   __| . |  _|  _|  _| .'|   |_____|_  |_  |
 |__|  |___|_| |_| |_| |__,|_|_|_____|___|___|
 -------------------------------------------------|
 1  => calculate a basic equation                 |
 -------------------------------------------------|
  Please enter a command below: 
1
 
 [ | ] Please input the first integer  
39
 
 [ | ] Please input the second integer 
100
  
 ------------------------------------------------------------------------
 [ | ] Data written to a file |output.txt|  [ | ] 

THE NEXT LINE IS ME USING MY TERMINAL TO OUTPUT THE TXT FILE

> cat output.txt
   39.0000000      +    100.000000      =    139.000000    
   39.0000000      -    100.000000      =   -61.0000000    
   39.0000000      *    100.000000      =    3900.00000    
   39.0000000      /    100.000000      =   0.389999986    
> 

```

as you can see this example of using the unit in write was a bit better, sometimes using write witrh more complex characters and I/O Statements can make a major difference when writing to a file

> Data Types 

| Data type  | Description              | Usage                                       |
| ---------- | ------------------------ | ------------------------------------------- |
| Integer    | Store Integer variables  | integer :: var                              |
| Real       | Store FLOAT values       | real :: var                                 |  
| Complex    | Store complex numbers    | complex :: x,y                              |
| Logical    | Store boolean values     | logical :: x=.True. , logical :: x= .FALSE. |
| Characters | Store string character   | character :: char                           |

Syntax: type_structure :: variable_name

**Example**

```f90
 ! declaring variables
   integer :: marks      ! Integer variable
   character(len=30) :: name ! string variable of length 30 characters
   
   !assigning values to variables
   marks = 60
   name = "mark"  
```

> Derived Data types

**Example**

```f90

!Type Declaration
   type typeName      
      !declarations
   end type typeName

!Declaring type variables
   type(typeName) :: type-varName

!accessing the components of the derived type
   
   type-varName%type-declaration-variable = value
```
> Operators

| Operator Type               | Description                           |
| --------------------------- | ------------------------------------- |
| Arithmetic Operator         | +, -, *, /, **                        |
| Relational Operator         | <, >, <=, >=, /=, ==                  |
| Logical    Operator         | .and. , .or. , .not. , .eqv. , .neqv. |


> Arrays

Syntax:  data-type, dimension (x,y) :: array-name

Example: 

```f90
integer, dimension(3,3) :: cube
```

<h2>Conditional Statements</h2>

> If

```f90
if (logical-expression) then      
   !Code  
end if
```

> If-Else

```f90
if (logical-expression) then     
   !code when the condition is true
else
   !code when the condition fails
end if
```

> Case

```f90
[name:] select case (regular-expression) 
   case (value1)          
   ! code for value 1          
   ... case (value2)           
   ! code for value 2           
   ...       
   case default          
   ! default code          
   ...   
end select [name]
```

> Loops ===============================================

> Do

```f90
do i = start, stop [,step]    
   ! code
end do
```


> Do-While

```f90
do while (condition) 
   !Code
end do
```

> Function

A function is a procedure which returns a single value.

```f90 
function functionName(arguments)  
  ! code 
end function [functionName]
```

> Calling a function

```f90
functionName(arguments)  
```

> Sub-routines


Subroutine is a procedure which does not return a value.

```f90

subroutine name(arguments)
  ! code  
end subroutine [name]
```

> Calling a Sub-routine

```
call subroutineName(arguments)  
```

# Chapter 2: module 3, applying basic frequency table solutions in fortran

> Why this topic 

so alot of you may be wondering what made me pick up fortran so quickly, given math classes for me were getting harder to understand not being able to cheat, go on google, use a calculator, have my family help me, use even my own programs etc etc i decided welp, i am going to need to break the rules sometime, i eventually taught myself after years of following these shitty rules that cheating is not such a horrible thing or bad thing if you understand the topic and content, thus i picked up fortran for my math classes, in one test i was doing online at home i had come across a question that fucked me over alot that they didnt give a proper understanding in the lesson, the question was the following. 

`Using the two-way table, what percentage of the students that do not like camping like traveling out of state? Round to the nearest whole percent.`

> the table is as follows 

|                        | Likes Traveling Out of State | Does Not Like Traveling Out of State | Row totals | 
| ---------------------- | ---------------------------- | ------------------------------------ | ---------- |
| Likes Camping          |          52                  |             38                       | 90         |
| Does NOT like camping  |          36                  |             74                       | 110        |
| Column totals          |          86                  |             112                      | 200        |


now in order to find the numbers we need to round to the whole nearest precent, we need to first find out numbers, and plan out where this is going, that is in order to make a program based around this equation, the reason i chose fortran is unlike other languages fortran kinda pre decimal points everything for you and formats everything, as well as makes it easier to solve equations like this, the first thing we are going to do is find our base variables, since we need to find the precentage of studants that DO NOT like camping but like traveling out of state we will read the rows 

our variables are 

the total number of students and votes that do not like camping but like trvaeling out doors is a value of **36**

now the row total which is our second value is 110

```
The other 74 that don't like camping, don't like traveling out of state.
36+74=110
So, that means there were 110 votes from the students that don't like camping in Total.
```

now we need to find the division answer by dividing the variables, then multiplying the division answer by 100 ( standard forumla for rounding to the nearest whole precent ), and finally round our number and determin if the integer after the decimal is OVER 5 or UNDER 5

lets now apply this to fortran to make a program that will kinda auto solve this based off two values, first we need to mmap out the struture of the program, in this sense we will need a integer structure which defines our first and second input value, then a real statement which defines our multiplication, and division answer, and a read statement which will allow us to take user input as x and y

so first lets declare the basics

> start of the program solve.f90

```f90
program solve
	implicit none
	REAL :: addanswer, subtractanswer               						 ! The addition and subtraction if needed 
	REAL :: multiplyanswer, divisionanswer            						 ! The main section to declare our multiplication structure and our division answer as REAL numbers
	REAL :: a, b                                     						 ! The values we will read from the user pre definied struct as a REAL number
	print *, ""                                      						 ! Seperation statement
	print *, "Please enter the first integer: "       						 ! First user input prompt
	read(*,*) a                                       						 ! First  user Input statement prompting real variable A
	print *, "Please enter the second integer: "      						 ! Second user input prompt
	read(*,*) b                                     						 ! Second user input statement prompting real variable B
	print *, "---------------------------------------"					         ! Line break from user input
	addanswer = a + b                                						 ! 
    	divisionanswer = a / b                           						 ! Dividing user input values from form A and form B
	write(*, *) "[ First step ] Divided Answer         -> ", a, " / ", b, " = ", divisionanswer      ! Writing the output answer to STD I/O Using WRITE format
	print*, ""											 ! Line Seperation
        multiplyanswer = divisionanswer * 100                                                            ! Multiply the division answer by 100 following standard format
        write(*, *) "[ Second Step ] Multiplication Answer -> ", divisionanswer, " * 100 = ", multiplyanswer ! Finally write the multiplication answer to the I/O Using the write format statment

end program solve
```

once done if you want to add this we can add the IF, IF ELSE, ELSE THEN statements to check if the decimal is over or under 5, and if it is then round to the nearest low whole number or nearest high whole number etc, the code notes kind of explain everything that is happening there, if you want to you can use the write statement to write to a specific ID and UNIT of a file as is down below 

```f90
program main 
    implicit none
    INTEGER :: x, y
    REAL :: addanswer, subtractanswer
    REAL :: multiplyanswer, divisionanswer
    REAL :: a, b
    print *, ''	 
    print *, '[ | ] Please input the first integer  '
    read(*,*) a
    print *, ''
    print *, '[ | ] Please input the second integer '
    read(*,*) b
    print*, "------------------------------------------"
   ! use the open function to open the file and call under a unit
    open(unit = 2, file = "output.txt")
    ! adding and subtraction, 
    addanswer = a + b
    divisionanswer = a / b
    !
    ! Since 2 is the column and UNIT of the file we opened we will be using 2 as the first format paramater since we do not just want to write to IO but also the files unit
    write(2, *) "[ First step ] Divided Answer         -> ", a, " / ", b, " = ", divisionanswer
    print*, ""
    multiplyanswer = divisionanswer * 100
    write(2, *) "[ Second Step ] Multiplication Answer -> ", divisionanswer, " * 100 = ", multiplyanswer 
    ! now close the UNIT of the file open function 
    close(2)
end program main

```

when we finally run the program and input our variables we will get this output 

```
 [ | ] Please input the first integer  
36
 
 [ | ] Please input the second integer 
110
 ------------------------------------------
 [ First step ] Divided Answer         ->    36.0000000      /    110.000000      =   0.327272713    
 
 [ Second Step ] Multiplication Answer ->   0.327272713      * 100 =    32.7272720
```

we now know our answer will be 33% given that we are rounding the the nearest whole precent and that the integer after the decimal point in 32. is over 5, so we are rounding up instead of down, if our integer was below 5 we round down thus our answer would be 32%

# solve unfinished frequency tables 

so in i believe algebra one you are taught frequency tables, the hardest thing for me to grasp until i applied common concepts of math to fortran was solving or figuring out how to finish simple frequency tables, an example table is this 


|                  |  Walk/Bike  | Bus  | Car        | Row totals |
| ---------------- | ----------- | ---- | ---------- | ---------- |
| Under age 15     |             |      |    60      |            | 
| Age 15 and above |	65       |      |            |   195      |	 	 	
| Column totals	   |	152      | 110  |    98      |   360      |

now in this table we are only going to be paying attention to finishing column 2 `age 15 and above` row 3 which is car, now we have two values here, 98 and 60 which we are going to use to find the amswer, its as simple as this, writing the program to take two variables as a REAL number as user based input, and subtracting those to values, i mean even you can do it try it yourself from what was taught and see if it matches the fortran program below 

```f90
program main 
	implicit none
	REAL :: a, b
   	REAL :: subtractanswer
    	print *, ""
    	print *, "Please input the column total: "
   	read(*,*) a
    	print *, "Please input the row's total: "
    	read(*,*) b
    	subtractanswer = a - b
    	write(*,*) "The finished Frequency -> ", a, " - ", b, " = ", subtractanswer 
end program main
```

this is well making our test questions and taking them into fortran to help us solve them, i was quite confused at first but then i actually realized i was missing an entire part of frequency tables XD, anyway this program ask the user for the column total which in our case is 98 and then the row aboves total which is 60, this is confusing scince i could not figure out a way to print it but yeah, another test question down 🌆

example output 


```
 Please input the column total: 
98
 Please input the row above's total: 
60
 The finished Frequency ->    98.0000000      -    60.0000000      =    38.0000000 
```

# RESOURCES AND LINKS FOR FORTRAN HELP 

**Orcal documentaion on fortran** 

https://docs.oracle.com/cd/E19059-01/stud.10/819-0492/

**Standards Conformance** 

https://docs.oracle.com/cd/E19059-01/stud.10/819-0492/1_intro.html#pgfId-10134


**features of the fortran95 compiler** 

https://docs.oracle.com/cd/E19059-01/stud.10/819-0492/1_intro.html#pgfId-10154

**Fortran utilites**

https://docs.oracle.com/cd/E19059-01/stud.10/819-0492/1_intro.html#pgfId-13233

**Debug utils**

https://docs.oracle.com/cd/E19059-01/stud.10/819-0492/1_intro.html#pgfId-9274

**Sun Preformance Library**

https://docs.oracle.com/cd/E19059-01/stud.10/819-0492/1_intro.html#pgfId-9287

**Interval Arithmatic**

https://docs.oracle.com/cd/E19059-01/stud.10/819-0492/1_intro.html#pgfId-13441

**MAN pages**

https://docs.oracle.com/cd/E19059-01/stud.10/819-0492/1_intro.html#pgfId-13086




> Chapter 4 Using Data Types  

**https://docs.oracle.com/cd/E19059-01/stud.10/819-0492/2_using.html#pgfId-7940**


**Data Types**

https://docs.oracle.com/cd/E19059-01/stud.10/819-0492/4_f95.html#pgfId-30304

**Boolean values**

https://docs.oracle.com/cd/E19059-01/stud.10/819-0492/4_f95.html#pgfId-8507

**Abbreviated Size Notation for Numeric Data Types**

https://docs.oracle.com/cd/E19059-01/stud.10/819-0492/4_f95.html#pgfId-18881


**Size and Alignment of Data Types**

https://docs.oracle.com/cd/E19059-01/stud.10/819-0492/4_f95.html#pgfId-28644

> Working with data type INTEGERS, REALS, and UASSIGNED

**Unassigned Integers**

https://docs.oracle.com/cd/E19059-01/stud.10/819-0492/4_f95.html#pgfId-30416

**Aithmatic Expressions**

https://docs.oracle.com/cd/E19059-01/stud.10/819-0492/4_f95.html#pgfId-30438

**Relational Expressions**

https://docs.oracle.com/cd/E19059-01/stud.10/819-0492/4_f95.html#pgfId-30448

**Control Constructs**

https://docs.oracle.com/cd/E19059-01/stud.10/819-0492/4_f95.html#pgfId-30452

**Input Output Constructs**

https://docs.oracle.com/cd/E19059-01/stud.10/819-0492/4_f95.html#pgfId-30457

> SCRIPT EXAMPLES, MATHEMATICAL 

**Get used to fortran's math standardization**

http://fortranwork.blogspot.com/p/program-list.html

**ATAN**

https://gcc.gnu.org/onlinedocs/gfortran/ATAN.html

**ATAN FUNCTION**

https://splichal.eu/gccsphinx-final/html/fortran/intrinsic-procedures/atan.html

**ATAN2**

https://splichal.eu/gccsphinx-final/html/fortran/intrinsic-procedures/atan2.html

**ATAN 2D**

https://splichal.eu/gccsphinx-final/html/fortran/intrinsic-procedures/atan2d.html

**ACHAR FORTRAN95 2003 STANDARD**

https://splichal.eu/gccsphinx-final/html/fortran/intrinsic-procedures/achar.html

**ACOS — Arccosine function**

https://splichal.eu/gccsphinx-final/html/fortran/intrinsic-procedures/acos.html

**COS**

https://splichal.eu/gccsphinx-final/html/fortran/intrinsic-procedures/cos.html

**ASIN**

https://splichal.eu/gccsphinx-final/html/fortran/intrinsic-procedures/asin.html

**SIN**

https://splichal.eu/gccsphinx-final/html/fortran/intrinsic-procedures/sin.html

**TAN**

https://splichal.eu/gccsphinx-final/html/fortran/intrinsic-procedures/tan.html

**COT**

https://splichal.eu/gccsphinx-final/html/fortran/intrinsic-procedures/cotan.html

> Other References for math in fortran95

https://www.nsc.liu.se/~boein/f77to90/f95.html

**Data Types, Structures, and mathematical functions in fortran 95**

https://splichal.eu/gccsphinx-final/html/fortran/intrinsic-procedures/

**Oracal docs on fortran95**

https://docs.oracle.com/cd/E19059-01/stud.10/819-0492/
