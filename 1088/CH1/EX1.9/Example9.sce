clear
clc
disp("Example 9: Write a code-sequence to exit the console")
printf("\n*******************************************************************\n")
disp("Answer   :  ")
halt("Ready???...Press Enter to continue")
    printf("Close the Scilab Console?....\ny :Yes\nAny other key:No")
    st = input('','s')
    clc(1)
    if( st == "y") then
        exit
        end
printf("\n*******************************************************************\n")
