//Program for example 10 chapter 3
clear()
clc

disp('Example 8   :                                                         Display the current machine name ')
disp('***************************************************************************')
disp('Answer    : ')
printf('The current machine details are\n ')
if (getos()=='Linux') then
    unix_w("uname ;uname -r")
else
    printf("Operating System  : %s\n Version  :  %s\n",getos(),getversion())
end
disp('***************************************************************************')
