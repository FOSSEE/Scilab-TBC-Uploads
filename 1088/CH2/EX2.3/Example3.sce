clear
clc

disp("Example   3 :  Display the value of the path variable of the current command interpreter")
disp('*************************************************************************')
disp("Answer   :")
printf("THE FOLLOWING LINES OF CODE RUN \nONLY IN SCILAB INSTALLED IN UNIX ENVIRONMENT.....")
printf("\nTHE CONSOLE GIVES DIFFERENT \nOUTPUT IN OTHER OPERATING SYSTEMS\n\n")
halt('Continue  ?? ? ...')
if (getos() ~= "Linux" ) then
    printf("The value of PATH variable is %s",SCIHOME)
else
    unix_w('echo The value of path variable is $PATH')
end
disp("****************************************************************************")
