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
