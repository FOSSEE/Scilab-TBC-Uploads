clear
clc

disp("Example 5:  Display all the manual pages related to a particular entered keyword ")
printf("\n*******************************************************************\n")
disp('Answer    : ')
disp('')
printf("THE FOLLOWING LINES OF CODE RUN \nONLY IN SCILAB INSTALLED IN UNIX ENVIRONMENT.....")
printf("\nTHE CONSOLE GIVES DIFFERENT \nOUTPUT IN OTHER OPERATING SYSTEMS\n\n")
halt('Continue  ?? ? ...')
if (getos() ~= "Linux" ) then
    st=input("Enter the keyword to be found in the HELP pages   : ","string")
    clc(1)
    apropos(st)
else
    disp("Enter the keyword whose man pages are to be shown  : ")
    unix_w('read stx;man $stx')
end
disp("****************************************************************************")

 
