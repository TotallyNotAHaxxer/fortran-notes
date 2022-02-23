! program to finish a frequency table based off of two input values
program freq
    implicit none
    REAL :: a, b
    REAL :: subtractanswer
    print *, ""
    print *, "Please input the column total: "
    read(*,*) a
    print *, "Please input the row above's total: "
    read(*,*) b
    subtractanswer = a - b
    write(*,*) "The finished Frequency -> ", a, " - ", b, " = ", subtractanswer 

end program freq
