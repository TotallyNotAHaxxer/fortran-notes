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
