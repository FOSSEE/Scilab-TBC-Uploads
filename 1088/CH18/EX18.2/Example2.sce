clear
flag=1
mode(-1)
clc

printf("Example 2    :               Show the method of using field extraction and begin-end in awk \n")
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
i=i+1;f(i)='begin {'
i=i+1;f(i)='fs = '+ascii(34)+'|'+ascii(34)+''
i=i+1;f(i)='printf '+ascii(34)+'%46s\n'+ascii(34)+',  '+ascii(34)+'Basic      Da      Hra   Gross'+ascii(34)+''
i=i+1;f(i)='}/sales|marketing/  {'
i=i+1;f(i)='     # Calculate the da, hra and gross pay'
i=i+1;f(i)='     da = 0.25*$6 ; hra = 0.50*$6 ; gp = $6+hra+da'
   
i=i+1;f(i)='     # Store the aggregates in seperate arrays'
i=i+1;f(i)='     tot[1] += $6 ; tot[6] += da ; tot[3] += hra ; tot[4] += gp'
i=i+1;f(i)='     kount++'
i=i+1;f(i)='}'
i=i+1;f(i)='END { # Print the averages'
i=i+1;f(i)='    printf '+ascii(34)+'\t        Average  %5d %5d %5d %5d\n'+ascii(34)+' , \'
i=i+1;f(i)='     tot[1]/kount, tot[2]/kount, tot[3]/kount, tot[4]/kount'
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
i=i+1;f(i)='if exist temp.lst del temp.lst'
i=i+1;f(i)='if exist cntl del cntl'
i=i+1;f(i)='findstr /N /R '+ascii(34)+'^'+ascii(34)+' %1>temp.lst'
i=i+1;f(i)='findstr /N /R '+ascii(34)+'^'+ascii(34)+' %1|find /C '+ascii(34)+':'+ascii(34)+'>cntl'
i=i+1;f(i)='for /F '+ascii(34)+'delims=  '+ascii(34)+' %%i in (cntl) do set max=%%i'
i=i+1;f(i)='del cntl'
i=i+1;f(i)='set kount=1'
i=i+1;f(i)='if exist lin del lin'
i=i+1;f(i)='set tot1=0'
i=i+1;f(i)='set tot2=0'
i=i+1;f(i)='set tot3=0'
i=i+1;f(i)='set tot4=0'
i=i+1;f(i)=':loop'
i=i+1;f(i)='if %kount% gtr %max% goto endloop'
i=i+1;f(i)='findstr /B '+ascii(34)+'%kount%'+ascii(34)+' temp.lst>lin'
i=i+1;f(i)='for /F '+ascii(34)+'tokens=6 delims=|'+ascii(34)+' %%i in (lin) do set basic=%%i'
i=i+1;f(i)='set /a da=basic/4'
i=i+1;f(i)='set /a hra=basic/2'
i=i+1;f(i)='set /a gp=basic+da+hra'
i=i+1;f(i)='set /a tot1+=basic&&set /a tot2+=da&&set /a tot3+=hra&&set /a tot4+=gp'
i=i+1;f(i)='set /a kount+=1'
i=i+1;f(i)='goto loop'
i=i+1;f(i)=':endloop'
i=i+1;f(i)='set /a '+ascii(39)+'tot1/=kount,tot2/=kount,tot3/=kount,tot4/=kount'+ascii(39)+''
i=i+1;f(i)='echo	  Average  %tot1%  %tot2%  %tot3%  %tot4%'
i=i+1;f(i)='pause>NUL'
n=i

v=mopen(nam+'.awk.bat','wt')
for i=1:n
    mfprintf(v,"%s\n",f(i))
end
mclose(v)

if getos()=='Linux' then
    printf("\n\nPlease Switch to windows and then execute using the instructions\n\nThank You \n\n")
    halt(' ')
    exit
end
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
