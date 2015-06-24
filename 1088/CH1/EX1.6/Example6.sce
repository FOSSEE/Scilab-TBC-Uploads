clear
mode(-1)
clc

disp("Example 6  :  Display all the files in the current directory and files beginning with ->Ex<-")
printf("\n*******************************************************************\n")
disp('Answer     : ')
halt('Press [Enter] to continue')
disp('Files in the current directory ')
mode(0)
ls
mode(-1)
halt('Press Enter to see files beginning with ->Ex<-')
printf("\n-------------------------------------------------------------------------------------------------\n")
disp('Files Beginning with ->Ex<-')
mode(0)
ls Ex*
mode(-1)
printf("\n*******************************************************************\n")
