clc
disp("Example 1.54")
printf("\n")
disp("Find the forward voltage drop at 100c and dynamic resistance")
T1=25
T2=100
Vft1=0.6    //forward voltage drop at 25c
IT1=26*10^-3  //forward current(constant)
IT2=IT1
//for silicon diode we know that 
v=(-1.8*10^-3)
Vft2=Vft1+((T2-T1)*v)  
IF=26*10^-3
rd1=(26*10^-3/IF)*((T1+273)/298)
rd2=(26*10^-3/IF)*((T2+273)/298)
printf("Forward voltage drop at 100c=\n%f volt\n",Vft2)
printf("Dynamic resistance at 25c and 100c=\n%f ohm\n%f ohm\n",rd1,rd2)
