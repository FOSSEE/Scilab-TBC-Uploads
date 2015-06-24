clear
clc

printf('Example 4   :  Show the usage of options in commands by \n\t\ttaking long listing(or detailed file listing)) ls -l as an example')
disp('*************************************************************************')
disp("Answer     :  ")
halt('Continue  ?? ? ...')
if (getos() ~= "Linux" ) then
    printf("The details of files  in the current directory are \n")
    powershell('ls')
else
    unix_w('echo The details of files in the current directory are ; ls -l')
end
disp("****************************************************************************")
