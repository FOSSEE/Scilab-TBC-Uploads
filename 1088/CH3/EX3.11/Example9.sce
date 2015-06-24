//Program for example 10 chapter 3
clear()
clc

disp('Example 9   :                                                         Display the user terminal details')
disp('***************************************************************************')
disp('Answer    : ')
printf('The current terminal details are\n ')
if (getos()=='Linux') then
    unix_w("tty")
else
    printf("The username details are %s\nThe terminal file details are %s\n",home,SCI)
end
disp('***************************************************************************')
