
clear()
clc

disp('Example 1   :                                                  Display the current working shell ')
disp('***************************************************************************')
disp('Answer    : ')
printf('The current Working Shell is ')
if (getos()=='Linux') then
    unix_w("echo $SHELL")
else
    printf("%s",getshell())
end
disp('***************************************************************************')
