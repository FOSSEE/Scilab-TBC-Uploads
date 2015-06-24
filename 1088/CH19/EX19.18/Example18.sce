clear
mode(-1)
pwd
curr=ans
clc

printf("Example 18    :               Show the method of  declaration of subroutines')
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
li(1)='#!/usr/bin/perl '
li(2)='system('+ascii(34)+'cls'+ascii(34)+')   ;# Script: '+nam+'.pl  - Shows the use of Subroutines  '
li(3)="#" 
li(4)=' system('+ascii(34)+'cls'+ascii(34)+');             #clears the screen'
li(5)='$username = &take_input('+ascii(34)+'Oracle user-id: '+ascii(34)+')  ;'
li(6)='$password = &take_input('+ascii(34)+'Oracle password: '+ascii(34)+', '+ascii(34)+'noecho'+ascii(34)+') ;'
li(7)='print  '+ascii(34)+'\nThe username and password are $username and $password\n'+ascii(34)+' ;'
li(8)=' '
li(9)='sub take_input { '
li(10)='       my ($prompt,$flag) = @_ ;              # @_stores arguments of subroutines '
li(11)='       while (1) {                                         # (1) means always true '
li(12)='                 print('+ascii(34)+'$prompt'+ascii(34)+') ;'
li(13)='                 use Term::ReadKey;'
li(14)='                  ReadMode 2       if  (@_==2);                         #turn ehoing off'
li(15)='                  chop($name=<STDIN>);    '
li(16)='                   ReadMode 0     if (@_==2);                   #turn echoing on back'
li(17)='                   last if $name =~ /\w/ ;    #Quit if $name has atleast one word character'
li(18)='               }'
li(19)='     $name   ;         #return $name will also do'
li(20)='     }'

li(21)='print('+ascii(34)+'\n\nType'+ascii(39)+'exit'+ascii(39)+'to go back to console\n\n'+ascii(34)+')'
halt(' ')

v=mopen(nam+'.pl','wt')
for i=1:20
    mfprintf(v,"%s\n",li(i))
   
    if i==13 then
        printf('\t  system(%c stty -echo%c) if (@_==2) ;              #Echo off\n',ascii(34),ascii(34))
    end
     if i==16 then
        printf('\t  system(%c stty echo%c) if (@_==2) ;              #Echo on\n',ascii(34),ascii(34))
    end
     if i~=20&i~=14&i~=13&i~=16 then
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
printf(" \n       %c  %s.pl     %c[ENTER]\n\n",ascii(34),nam,ascii(34))

printf("\n$  %s.pl               #to execute the perlscript",nam)
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
