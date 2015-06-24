clear
mode(-1)
pwd
curr=ans
clc

printf("Example 11    :               Show the method of  searching in an array using %cgrep%c in perl \n",ascii(39),ascii(39))
disp("****************************************************************")
disp("Answer    :   ")

disp("INSTRUCTIONS   : ")
printf("\n1. Here all instructions are preloaded in the form of a demo\n\nInitially the whole perl script is displaying and then \n the result of the same can be seen in the command line interpreter.\n\n2. PLEASE MAKE SURE THAT THE PERLSCRIPT INTERPRETER\nEXISTS IN THE SYSTEM\nOR THE COMMAND WOULD NOT WORK \n\n3. PRESS ENTER AFTER EACH COMMAND to see its RESULT\n\n5. PRESS ENTER AFTER EACH RESULT TO GO TO THE NEXT COMMAND\n\n6.A file named %cdept.lst%c with the necessary details gets created automatically for the session",ascii(34),ascii(34))
halt('.............Press [ENTER] to continue.....')
halt("")
clc
printf("\tUNIX SHELL SIMULATOR(DEMO VERSION WITH PRELOADED COMMANDS)\n\n\n")

i=0
i=i+1;f(i)='01|accounts|6213'
i=i+1;f(i)='02|admin|5423'
i=i+1;f(i)='03|marketing|6521'
i=i+1;f(i)='04|personnel|2365'
i=i+1;f(i)='05|production|9876'
i=i+1;f(i)='06|sales|1006'
n=i
printf("\n\n$ cat dept.lst      # to open the file dept.lst")
halt(' ')
u=mopen('dept.lst','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)

printf("\n# Enter the name of the perlscript file whichever you desire  \n\n")
nam=input('$ cat  ','s')
clc
li(1)='#!/usr/bin/perl'
li(2)='# Script: '+nam+'.pl  - Searches array for a string or regular expression  '
li(3)="#"
li(4)='@dept_arr = <> ;                                       #  Read file into array'
li(5)='for ($i=0 ; $i<3 ; $i++) {                       #  Can use only three times'
li(6)='       print('+ascii(34)+'Enter a code to look up: '+ascii(34)+') ;  '
li(7)='       chop($code = <STDIN>)  ;'
li(8)='       @found_arr = grep (/^$code/, @dept_arr)  ;          #  Search at beginning'
li(9)='         if  ($#found_arr == -1 || $code eq '+ascii(34)+ascii(34)+') {       #  -1 means null array'
li(10)='                   print('+ascii(34)+'Code does not exist\n'+ascii(34)+') ; '
li(11)='                   next ;                                     #  Go to the beginning of loop'
li(12)='     }'
li(13)='     @tt=split(/\|/ ,$found_arr[0])  ;                   #  Split first element only '
li(14)='       print('+ascii(34)+'Code = $code  Description = $tt[1]\n'+ascii(34)+') ;  '
li(15)=' }'


li(16)='print('+ascii(34)+'\n\nType'+ascii(39)+'exit'+ascii(39)+'to go back to console\n\n'+ascii(34)+')'
halt(' ')

printf("\n$ cat %s.pl               #open the perlscript file %s.pl\n\n",nam,nam)
v=mopen(nam+'.pl','wt')
for i=1:16
    mfprintf(v,"%s\n",li(i))
    if i~=16 then
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
printf(" \n       %c %s.pl  dept.lst   %c[ENTER]\n\n",ascii(34),nam,ascii(34))

printf("\n$ %s.pl   dept.lst            #to execute the perlscript",nam)
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
mdelete('dept.lst')
