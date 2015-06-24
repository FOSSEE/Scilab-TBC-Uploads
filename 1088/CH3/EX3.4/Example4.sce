//Program for example 4 chapter 3
clear
clc

disp("Example 4:Display a message or the value of a variable using the command printf")
disp("********************************************************************")
disp("Answer    :   ")
disp('')
halt('Continue ...??  ')
if (getos()~='Linux') then
     printf("\nTo display a Message  :\nEnter Filename   ")
     printf("\nTo Display the value of a Variable : \n My Current Shell is %s\n",getshell())
else
    unix_w('echo No Filename entered\nMy current shell is $SHELL\n')
    
end
disp('**********************************************************************')
