
clear
clc
mode(-1)

 disp("Example 1: Write a shell script to display the calendar of the present date ,and the shell name")
 disp("**************************************************************************")
 disp("Answer  :   ")
 disp("")
 halt("The code related to the example lies in the dependency file shell1.sci   ")
 printf("Today  date is %s",date())
 printf("\nThis month calendar is \n")
 calendar()
 t=ans
 disp(t(1))
 disp(t(2))
 disp(t(3))
 printf("\nMy shell : %s",getshell())
 disp("**************************************************************************") 
