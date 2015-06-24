clear
mode(-1)
pwd
curr=ans
clc

printf("Example 14    :               Show the method of  using regular expressions in perl \n")
disp("****************************************************************")
disp("Answer    :   ")

disp("INSTRUCTIONS   : ")
printf("\n1. Here all instructions are preloaded in the form of a demo\n\nInitially the whole perl script is displaying and then \n the result of the same can be seen in the command line interpreter.\n\n2. PLEASE MAKE SURE THAT THE PERLSCRIPT INTERPRETER\nEXISTS IN THE SYSTEM\nOR THE COMMAND WOULD NOT WORK \n\n3. PRESS ENTER AFTER EACH COMMAND to see its RESULT\n\n5. PRESS ENTER AFTER EACH RESULT TO GO TO THE NEXT COMMAND\n\n6.Afile named %cemp.lst%c with the necessary details gets created automatically for the session",ascii(34),ascii(34))
halt('.............Press [ENTER] to continue.....')
halt("")
clc
printf("\tUNIX SHELL SIMULATOR(DEMO VERSION WITH PRELOADED COMMANDS)\n\n\n")

i=0
i=i+1;f(i)='2233|a.k.shukla             |g.m.        |sales           |12/12/52|6000'
i=i+1;f(i)='9876|jai sharma             |director  |production |12/03/50|7000'
i=i+1;f(i)='5678|sumit chakrobarty|d.g.m      |marketing  |19/04/43|6000'
i=i+1;f(i)='2356|barun sengupta      |director  |personnel  |11/05/47|7800'
i=i+1;f(i)='5423|n.k. gupta              |chairman |admin       |30/08/56|5400'
i=i+1;f(i)='1006|chanchal singhvi   |director  |sales          |03/09/38|6700'
i=i+1;f(i)='6213|karuna ganguly      |g.m.        |accounts   |05/06/62|6300'
i=i+1;f(i)='1265|s.n. dasgupta         |manager  |sales          |12/09/63|5600'
i=i+1;f(i)='4290|jayant Choudhary  |executive |production|07/09/50|6000'
i=i+1;f(i)='2476|anil aggarwal        |manager   |sales          |01/05/59|5000'
i=i+1;f(i)='6521|lalit chowdury       |director    |marketing |26/09/45|8200'
i=i+1;f(i)='3212|shyam saksena      |d.g.m        |accounts   |12/12/55|6000'
i=i+1;f(i)='3564|sudhir Agarwal     |executive  |personnel  |06/07/47|7500'
i=i+1;f(i)='2345|j.b. saxena            |g.m.           |marketing |12/03/45|8000'
i=i+1;f(i)='0110|v.k. agrawal         |g.m.           |marketing  |31/02/40|9000'
n=i
printf("\n\n$ cat emp.lst      # to open the file emp.lst")
halt(' ')
u=mopen('emp.lst','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)

printf("\n# Enter the name of the perlscript file whichever you desire  \n\n")
nam=input('$ cat  ','s')
halt(' ')
clc
li(1)='#!/usr/bin/perl'
li(2)='# Script: '+nam+'.pl  -  Uses s and tr functions for substitution  '
li(3)="#"
li(4)='print('+ascii(34)+'Last two digits of date of birth:  '+ascii(34)+');'
li(5)='$yearin = <STDIN> ;'
li(6)='chop($yearin);                                    #  Remove \n else comparison will fail later'
li(7)='   '
li(8)='$found = 0;'
li(9)='while (<>)  {'
li(10)='            @line = split(/\|/) ;         '
li(11)='              $name = $line[1] ; $emp_id = $line[0]   ; '
li(12)='             @tt=split(/\//,$line[4]);          #Splits date field'
li(13)='              $year = $tt[2] ;                     #2-digit year extracted ..'
li(14)=li(7)
li(15)='              if($year eq $yearin)   {        # .. and compared with the user input'
li(16)='                         $found = 1;'
li(17)='                         $name =~ tr/a-z/A-Z/ ;   # Name field changed to caps'
li(18)='                         $emp_id =~ s/^/9/   ;       # Adds 9 as a prefix to employee id'
li(19)='                         $line[0] = $emp_id  ;      #Reassign'
li(20)='                         $line[1] =  $name  ;         #with changes'
li(21)='                          $x=join('+ascii(34)+':'+ascii(34)+', @line) ;'
li(22)='                         $x=~s/\s+:/:/g  ;                    #Removes whitespace before delimiter'
li(23)='                         $x=~s#/#-#g    ;                       #New delimiter in date'
li(24)='                         print $x; } }'
li(25)='print('+ascii(34)+'Year 19'+ascii(34)+'. $yearin . '+ascii(34)+'not found\n'+ascii(34)+')   if $found eq 0  ;'


li(26)='print('+ascii(34)+'\n\nType'+ascii(39)+'exit'+ascii(39)+'to go back to console\n\n'+ascii(34)+')'
halt(' ')

v=mopen(nam+'.pl','wt')
for i=1:26
    mfprintf(v,"%s\n",li(i))
    if i~=26 then
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
printf(" \n       %c %s.pl  emp.lst   %c[ENTER]\n\n",ascii(34),nam,ascii(34))

printf("\n$ %s.pl   emp.lst            #to execute the perlscript",nam)
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
mdelete('emp.lst')
