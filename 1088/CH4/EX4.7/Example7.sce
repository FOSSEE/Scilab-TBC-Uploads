mode(-1)
clear
clc

disp("Example 7    :               Show the use of the file command ls for long listing of files")
disp("****************************************************************")
disp("Answer    :   ")
disp("INSTRUCTIONS   : ")
printf("\nHere all instructions are preloaded in the form of a demo\nPRESS ENTER AFTER EACH COMMAND to see its RESULT\nPRESS ENTER AFTER EACH RESULT TO GO TO THE NEXT COMMAND\n")
halt('.............Press [ENTER] to continue.....')
halt("")
clc
printf("\tUNIX SHELL SIMULATOR(DEMO VERSION WITH PRELOADED COMMANDS)\n\n\n")
printf("\n\n$ ls                        #To get the files and directories present in the current directory\n\n")
halt("........# (hit [ENTER] for result)")
mode(0)
ls
mode(-1)
printf("\tUNIX SHELL SIMULATOR(DEMO VERSION WITH PRELOADED COMMANDS)\n\n\n")
printf("\n\n$ ls  -l                       #To get the files and directories present in the current directory\n\n")
halt("........# (hit [ENTER] for result)")
mode(0)
powershell('ls')
mode(-1)
halt("........# (hit [ENTER] for next instruction)")
printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()
printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)

