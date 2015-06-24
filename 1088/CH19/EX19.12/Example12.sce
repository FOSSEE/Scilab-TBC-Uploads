clear
mode(-1)
pwd
curr=ans
clc

printf("Example 12    :               Show the method of  using %cASSOCIATIVE ARRAYS%c in perl \n",ascii(39),ascii(39))
disp("****************************************************************")
disp("Answer    :   ")

disp("INSTRUCTIONS   : ")
printf("\n1. Here all instructions are preloaded in the form of a demo\n\nInitially the whole perl script is displaying and then \n the result of the same can be seen in the command line interpreter.\n\n2. PLEASE MAKE SURE THAT THE PERLSCRIPT INTERPRETER\nEXISTS IN THE SYSTEM\nOR THE COMMAND WOULD NOT WORK \n\n3. PRESS ENTER AFTER EACH COMMAND to see its RESULT\n\n4. PRESS ENTER AFTER EACH RESULT TO GO TO THE NEXT COMMAND\n")
halt('.............Press [ENTER] to continue.....')
halt("")
clc
printf("\tUNIX SHELL SIMULATOR(DEMO VERSION WITH PRELOADED COMMANDS)\n\n\n")


printf("\n# Enter the name of the perlscript file whichever you desire  \n\n")
nam=input('$ cat  ','s')
halt(' ')
clc
printf("\n$ cat %s        #to open perlscript file %s  \n ",nam,nam)
li(1)='#!/usr/bin/perl'
li(2)='# Script: '+nam+'.pl  - Uses an associative array  '
li(3)="#"
li(4)='%region = ('+ascii(34)+'N'+ascii(34)+','+ascii(34)+'North'+ascii(34)+','+ascii(34)+'S'+ascii(34)+','+ascii(34)+'South'+ascii(34)+','+ascii(34)+'E'+ascii(34)+','+ascii(34)+'East'+ascii(34)+','+ascii(34)+'W'+ascii(34)+','+ascii(34)+'West'+ascii(34)+') ;'
li(5)='die('+ascii(34)+'Nothing entered in commandline\n'+ascii(34)+')  if (@ARGV == 0 )  ;'
li(6)='foreach $letter (@ARGV) {'
li(7)='    print('+ascii(34)+'The letter $letter stands for $region{$letter}'+ascii(34)+'.'+ascii(34)+'\n'+ascii(34)+')  ; '
li(8)='}'
li(9)='@key_list = keys(%region)  ;                                                    #  List of subscripts'
li(10)='print('+ascii(34)+'The subscripts are @key_list\n'+ascii(34)+') ;  '
li(11)='@value_list = values %region    ;                                             #  List of values'
li(12)='print('+ascii(34)+'The values are @value_list\n'+ascii(34)+') ;  '

li(13)='print('+ascii(34)+'\n\nType'+ascii(39)+'exit'+ascii(39)+'to go back to console\n\n'+ascii(34)+')'
halt(' ')

v=mopen(nam+'.pl','wt')
for i=1:13
    mfprintf(v,"%s\n",li(i))
    if i~=13 then
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
