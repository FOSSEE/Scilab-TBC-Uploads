//Program for example 3 chapter 3
clear
clc

disp("Example 3:Display a message or the value of a variable using the command echo")
disp("********************************************************************")
disp("Answer    :   ")
disp('')
halt('Continue ...??  ')
if (getos()~='Linux') then
    x=input('Enter any value to be Displayed Again   : ','s')
    clc(1)
    printf("The entered value is %s",x)
    printf("\nTo display a Message  :\nEnter Filename   ")
else
    unix_w('echo Enter n;read n;echo $n is entered value')
    unix_w('echo Enter filename \c')
    
end
disp('**********************************************************************')
