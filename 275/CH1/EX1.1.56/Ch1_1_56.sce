clc
disp("Example 1.56")
printf("\n")
disp("To find maximum forward current at 25c & 75c and Forward voltage drop and Dynamic resistance")
PT1=1.5
VT1=0.9
D=7.5*10^-3
//for silicon diodes 
v=(-1.8*10^-3)
IF=20*10^-3
T1=25
T2=75
IT1=PT1/VT1
PT2=PT1-((T2-T1)*D)
IT2=PT2/VT1   //assume voltage drop remains constant at all temperature
VF2=VT1+((T2-T1)*v)
rd1=(26*10^-3/IF)*((T1+273)/298)
rd2=(26*10^-3/IF)*((T2+273)/298)
printf("Maximum forward current at 25c & 75c =\n%f Ampere\n%f Ampere\n",IT1,IT2)
printf("Forward voltage drop at 75c=\n%f volt\n",VF2)
printf("Dynamic resistance at 25c and 75c=\n%f ohm\n%f ohm\n",rd1,rd2)
