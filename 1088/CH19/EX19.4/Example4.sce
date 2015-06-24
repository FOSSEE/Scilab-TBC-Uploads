clear
flag=1
mode(-1)
pwd
curr=ans
clc

printf("Example 4    :               Show the method of array handling in perl \n")
disp("****************************************************************")
disp("Answer    :   ")

disp("INSTRUCTIONS   : ")
printf("\n1. Here all instructions are preloaded in the form of a demo\n\nInitially the whole perl script is displaying and then \n the result of the same can be seen in the command line interpreter.\n\n2. PLEASE MAKE SURE THAT THE PERLSCRIPT INTERPRETER\nEXISTS IN THE SYSTEM\nOR THE COMMAND WOULD NOT WORK \n\n3. PRESS ENTER AFTER EACH COMMAND to see its RESULT\n\n5. PRESS ENTER AFTER EACH RESULT TO GO TO THE NEXT COMMAND\n")
halt('.............Press [ENTER] to continue.....')
halt("")
clc
printf("\tUNIX SHELL SIMULATOR(DEMO VERSION WITH PRELOADED COMMANDS)\n\n\n")


printf("\n# Enter the name of the perlscript file whichever you desire  \n\n")
nam=input('$ cat  ','s')
halt(' ')
clc
li(1)='#!/usr/bin/perl'
li(2)='# Script: '+nam+'.pl - Shows use of arrays'
li(3)="#"
li(4)='@days_between = ('+ascii(34)+'Wed'+ascii(34)+',  '+ascii(34)+'Thu'+ascii(34)+') ;'
li(5)='@days = (Mon,Tue,@days_between,Fri)  ; '
li(6)='@days[5,6] = qw/Sat Sun/  ; '
li(7)='$length = @days ; '
li(8)='#'
li(9)='print('+ascii(34)+'The third day of the week is $days[2]\n'+ascii(34)+') ;'
li(10)='print('+ascii(34)+'The days of the week are @days\n'+ascii(34)+') ;'
li(11)='print('+ascii(34)+'The number of elements in the array is  $length\n'+ascii(34)+') ;'
li(12)='print('+ascii(34)+'The last subscript of the array is $#days\n'+ascii(34)+') ;'
li(13)='$#days = 5;                                                                                                                      #Resize the array'
li(14)='print('+ascii(34)+'\$days[6] is now $days[6]\n'+ascii(34)+') ;'
li(15)='print('+ascii(34)+'\n\nType'+ascii(39)+'exit'+ascii(39)+'to go back to console\n\n'+ascii(34)+')'
halt(' ')

v=mopen(nam+'.pl','wt')
for i=1:15
    mfprintf(v,"%s\n",li(i))
    if i~=15 then
    printf("%s\n",li(i))
    end
end
mclose(v)
if getos()=='Linux' then
    printf("\n\nPlease open a new terminal window and then go to the directory %s and execute the following instruction\n\nperl %s.pl [Command line parameters if any]\n\nThank You \n\n",curr,nam)
    halt(' ')
    exit
end


printf("\n# type the following command in the command line interpreter as soon as it appears")
printf(" \n       %c perl %s.pl     %c[ENTER]\n\n",ascii(34),nam,ascii(34))

printf("\n$ perl %s.pl               #to execute the perlscript",nam)
halt(' ')
dos('start')
printf("\n\n\n")
halt('   ---------------->Executing PerlScript in Command Line Prompt<-------------- ')
printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)

mdelete(nam+'.pl')
