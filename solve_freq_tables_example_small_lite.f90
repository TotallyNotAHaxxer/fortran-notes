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
    ! adding and subtraction, 
    addanswer = a + b
    divisionanswer = a / b
    !
    write(*, *) "[ First step ] Divided Answer         -> ", a, " / ", b, " = ", divisionanswer
    print*, ""
    multiplyanswer = divisionanswer * 100
    write(*, *) "[ Second Step ] Multiplication Answer -> ", divisionanswer, " * 100 = ", multiplyanswer 
end program main

