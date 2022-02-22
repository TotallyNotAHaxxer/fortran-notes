  GNU nano 5.4                                                                             file.f90                                                                                      
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
