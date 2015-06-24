//Program for example 2 chapter 2
clear
clc

disp("Example 2: Display the type of a given variable or a command ")
disp('')
printf("\n*******************************************************************\n")
disp("Answer   :")
printf("THE FOLLOWING LINES OF CODE RUN \nONLY IN SCILAB INSTALLED IN UNIX ENVIRONMENT.....")
printf("\nTHE CONSOLE GIVES DIFFERENT \nOUTPUT IN OTHER OPERATING SYSTEMS")
if(getos() ~= "Linux" )then
   ctd=input("Enter the command or variable whose type is to be determined  ")
   clc(1)
   pt = input("Enter the command again to confirm  ","s")
   clc(1)
    printf("Continue?....\ny :Yes\nAny other key:No")
    st = input('','s')
    clc(2)
    if( st ~= "y") then
        exit
    else
        n=type(ctd)
        clc(1)
        printf("%s is a ",pt)
        select n
case            1 then
printf("a real or complex matrix of double.")

case            2 then
printf('a polynomial matrix.')
case           4 then
printf('a boolean matrix.')
case           5 then
printf('a sparse matrix.')

case 6 then
printf('a sparse boolean matrix.')

case 7 then
printf('Matlab sparse matrix')
case 8 then
printf('a matrix of integers stored on 1 (int8), 2 (int16) or 4 (int32) bytes.')
case 9 then
printf('a matrix of graphic handles.')
case 10 then
printf('a matrix of character strings.')
case 11 then
printf('an un-compiled function . A function created with deff with argument [n].')
case 13 then
printf('a compiled function .')
case 14 then
printf('a function library.')
case 15 then
printf('a list.')
case 16 then
printf('a typed list (tlist).')
case 17 then
printf('a matrix oriented typed list (mlist).')
case 128 then
printf('a pointer (Use case: lufact).')
case 129 then
printf('a size implicit polynomial used for indexing.')
case 130 then
printf('a built-in Scilab function, called also gateway (C, C++ or Fortran code).')
case 0 then
printf('a null variable. It is mainly used internally by Scilab. If a function has no declared returned argument like disp when it is called it returns a null variable. If a function is called with an omitted argument in the argument list like foo(a,,b) the missing argument is assigned to a null variable.')

        end
        end
else
    disp("Enter the file whose type is to be found")
    unix_w('read xtun;type $xtun')
end
printf("\n*******************************************************************\n")
