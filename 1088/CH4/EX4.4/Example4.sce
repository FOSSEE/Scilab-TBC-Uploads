clear
mode(-1)
rmdir('pis')
pwd
cwd=ans
clc

printf("Example 4    :               Show the method of  creating a directory named pis \n \t\tand surf to the same directory \n")
disp("****************************************************************")
disp("Answer    :   ")
disp("INSTRUCTIONS   : ")
printf("\nHere all instructions are preloaded in the form of a demo\nPRESS ENTER AFTER EACH COMMAND to see its RESULT\nPRESS ENTER AFTER EACH RESULT TO GO TO THE NEXT COMMAND\n")
halt('.............Press [ENTER] to continue.....')
halt("")
clc
printf("\tUNIX SHELL SIMULATOR(DEMO VERSION WITH PRELOADED COMMANDS)\n\n\n")

printf("\n\n$ mkdir  pis                        #To make a directory named pis\n\n")
halt("........# (hit [ENTER] for result)")
clc(1)
mkdir('pis')

printf("\n\n\n$ cd  pis                      #To go to the current directory\n\n")
halt("........# (hit [ENTER] for next instruction)")
clc(1)
cd 'pis'
xt=ans

printf("\n\n\n$ pwd                             \n\n")
halt("........# (hit [ENTER] for result)")
clc(1)
printf(" %s \n",xt)
halt("........# (hit [ENTER] for next instruction)")

printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
cd(cwd)
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)
