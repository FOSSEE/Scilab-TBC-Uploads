clear
clc

disp("Example 5:  Display all the current working processes in the current session")
printf("\n*******************************************************************\n")
disp('Answer    : ')
disp('')
halt('Press Enter to display the processes')
if (getos()=='Windows') then
clc(1)
powershell('ps')
else
 clc(1)
 unix_w('ps')
end
printf("\n*******************************************************************\n")
