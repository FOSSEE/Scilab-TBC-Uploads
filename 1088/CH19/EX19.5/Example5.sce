clear
flag=1
mode(-1)
pwd
curr=ans
clc

printf("Example 5    :               Show the method of command line argument  handling in perl \n")
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
li(2)='# Script: '+nam+'.pl - Determines whether a year is leap year or not '
li(3)="#"
li(4)='die('+ascii(34)+'You have not entered the year\n'+ascii(34)+')  if (@ARGV == 0 ) ;'
li(5)='$year = $ARGV[0] ;                                               # The first argument'
li(6)='$last2digits = substr($year,-2,2) ;                        #Extract from the right '
li(7)='if ($last2digits eq '+ascii(34)+'00'+ascii(34)+') {'
li(8)='          $yesorno = ($year % 400 == 0 ? '+ascii(34)+'certainly'+ascii(34)+' : '+ascii(34)+'not'+ascii(34)+' ) ;'
li(9)='}'
li(10)='else {'
li(11)='          $yesorno = ($year % 4 == 0 ? '+ascii(34)+'certainly'+ascii(34)+' : '+ascii(34)+'not'+ascii(34)+' ) ;'
li(12)=li(9)
li(13)='print('+ascii(34)+'$year is  '+ascii(34)+' . $yesorno . '+ascii(34)+' a leap year \n'+ascii(34)+') ;'

li(14)='print('+ascii(34)+'\n\nType'+ascii(39)+'exit'+ascii(39)+'to go back to console\n\n'+ascii(34)+')'
halt(' ')

v=mopen(nam+'.pl','wt')
for i=1:14
    mfprintf(v,"%s\n",li(i))
    if i~=14 then
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
printf(" \n       %c perl %s.pl [THE YEAR AS COMMANDLINE ARGUMENT]    %c[ENTER]\n\n",ascii(34),nam,ascii(34))

printf("\n$ perl %s.pl  [THE YEAR AS COMMANDLINE ARGUMENT]             #to execute the perlscript",nam)
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
