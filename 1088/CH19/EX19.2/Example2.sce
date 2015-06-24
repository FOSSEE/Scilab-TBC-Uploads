clear
flag=1
mode(-1)
pwd
curr=ans
clc

printf("Example 2    :               Show the method of using chop in perl \n\n")
disp("****************************************************************")
disp("Answer    :   ")

disp("INSTRUCTIONS   : ")
printf("\nHere all instructions are preloaded in the form of a demo\n\nInitially the whole perl script is displaying and then \n the result of the same can be seen in the command line interpreter.\nPLEASE MAKE SURE THAT THE PERLSCRIPT INTERPRETER\nEXISTS IN THE SYSTEM\nOR THE COMMAND WOULD NOT WORK \n\n\nPRESS ENTER AFTER EACH COMMAND to see its RESULT\nPRESS ENTER AFTER EACH RESULT TO GO TO THE NEXT COMMAND\n")
halt('.............Press [ENTER] to continue.....')
halt("")
clc
printf("\tUNIX SHELL SIMULATOR(DEMO VERSION WITH PRELOADED COMMANDS)\n\n\n")


printf("\n# Enter the name of the perlscript file whichever you desire  \n\n")
nam=input('$ cat  ','s')
halt(' ')
clc
li(1)='#!/usr/bin/perl'
li(2)='# Script: '+nam+'.pl - Demonstrates use of chop'
li(3)="#"
li(4)='print('+ascii(34)+'Enter your name:   '+ascii(34)+')  ;' 
li(5)='$name = <STDIN> ;             '
li(6)='chop($name)  ;                                                #Removes newline character from $name'
li(7)='if ( $name ne '+ascii(34)+ascii(34)+' ) {'+ascii(10)+'print('+ascii(34)+'$name, have a nice day\n'+ascii(34)+');} '
li(8)='else {'+ascii(10)+'print('+ascii(34)+'You have not entered your name\n'+ascii(34)+');} '
li(9)='print('+ascii(34)+'\n\nType exit to go back to console\n\n'+ascii(34)+')'
halt(' ')

v=mopen(nam+'.pl','wt')
for i=1:9
    mfprintf(v,"%s\n",li(i))
    if i~=9 then
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
printf(" \n       %c perl %s.pl  %c[ENTER]\n\n",ascii(34),nam,ascii(34))

printf("\n$ perl %s.pl    #to execute the perlscript",nam)
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
