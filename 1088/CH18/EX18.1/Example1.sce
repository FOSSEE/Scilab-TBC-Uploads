clear
flag=1
mode(-1)
clc

printf("Example 1    :               Show the method of using field extraction in awk \n")
disp("****************************************************************")
disp("Answer    :   ")

disp("INSTRUCTIONS   : ")
printf("\n1. Here all instructions are preloaded in the form of a demo\n\nInitially the whole perl script is displaying and then \n the result of the same can be seen in the command line interpreter.\n\n2. PLEASE MAKE SURE THAT THE PERLSCRIPT INTERPRETER\nEXISTS IN THE SYSTEM\nOR THE COMMAND WOULD NOT WORK \n\n3. PRESS ENTER AFTER EACH COMMAND to see its RESULT\n\n5. PRESS ENTER AFTER EACH RESULT TO GO TO THE NEXT COMMAND\n")
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
u=mopen('empn.lst','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc

i=0
i=i+1;f(i)='BEGIN {IFS='+ascii(34)+'|'+ascii(34)
i=i+1;f(i)='printf '+ascii(34)+'\t\tEmployee abstract\n\n'+ascii(34)
i=i+1;f(i)='} $6 > 7500 {            # Increemnt the variables for serial number and pay'
i=i+1;f(i)='  kount++ ; tot+= $6      # Multiple assignments in one line'
i=i+1;f(i)='  printf '+ascii(34)+'%3d  % -20s % -12s %d\n'+ascii(34)+',kount,$2,$3,$6'
i=i+1;f(i)='}'
i=i+1;f(i)='END {'
i=i+1;f(i)='     printf '+ascii(34)+'\n\tThe averge basic pay is %6d\n'+ascii(34)+',tot/kount'
i=i+1;f(i)='}'
n=i

printf("\n# Enter the name of the shellscript file whichever you desire  \n\n")
nam=input('$ cat  ','s')
halt(' ')

for i=1:n
    printf("%s\n",f(i))
end
halt(' ')
clc
i=0
i=i+1;f(i)='@echo off'
i=i+1;f(i)='cls'
i=i+1;f(i)='echo  Employee abstract'
i=i+1;f(i)='echo.'
i=i+1;f(i)='set t=0'
i=i+1;f(i)='set tot=0'
i=i+1;f(i)='for /F '+ascii(34)+'tokens=2,3,6 delims=|'+ascii(34)+' %%i in (%1) do if %%k gtr 7500 set /a t+=1&&echo %%i   %%j  %%k>>res&&set /a tot+=%%k' 
i=i+1;f(i)='type res'
i=i+1;f(i)='echo.'
i=i+1;f(i)='set /a tot/=i'
i=i+1;f(i)='echo The average basic pay is %tot%'
i=i+1;f(i)='del res'
n=i


if getos()=='Linux' then
    printf("\n\nPlease Switch to windows and then execute using the instructions\n\nThank You \n\n")
    halt(' ')
    exit
end

v=mopen(nam+'.awk.bat','wt')
for i=1:n
    mfprintf(v,"%s\n",f(i))
end
mclose(v)


printf("\n# type the following command in the command line interpreter as soon as it appears")
printf(" \n       %c   %s.awk empn.lst     %c [ENTER]\n\n",ascii(34),nam,ascii(34))

printf("\n$ %s.awk   empn.lst           #to execute the perlscript",nam)

halt(' ')
dos('start')
printf("\n\n\n")
halt('   ---------------->Executing awkScript in Command Line Prompt<-------------- ')
printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)

mdelete(nam+'.awk.bat')
mdelete('empn.lst')
