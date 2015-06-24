clear
mode(-1)
pwd
cwd=ans
t=tokens(cwd,'\')
par=strcat(t(1:(size(t,'r')-1)),'\')
clc

printf("Example 6    :               Show the use of relative pathname .. by going to the parent of the current directory \n")
disp("****************************************************************")
disp("Answer    :   ")
disp("INSTRUCTIONS   : ")
printf("\nHere all instructions are preloaded in the form of a demo\nPRESS ENTER AFTER EACH COMMAND to see its RESULT\nPRESS ENTER AFTER EACH RESULT TO GO TO THE NEXT COMMAND\n")
halt('.............Press [ENTER] to continue.....')
halt("")
clc
printf("\tUNIX SHELL SIMULATOR(DEMO VERSION WITH PRELOADED COMMANDS)\n\n\n")

printf("\n\n$ pwd                        #To get the value of the current directory\n\n")
halt("........# (hit [ENTER] for result)")
clc(1)
printf(" %s \n",cwd)
halt("........# (hit [ENTER] for next instruction)")

printf("\n\n\n$ cd  ..                       #To go to the current directory\n\n")
halt("........# (hit [ENTER] for next instruction)")
clc(1)
cd(par)

printf("\n\n\n$ pwd                             \n\n")
halt("........# (hit [ENTER] for result)")
clc(1)
printf(" %s \n",par)
halt("........# (hit [ENTER] for next instruction)")

printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
cd(cwd)
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)
