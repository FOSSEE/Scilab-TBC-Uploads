clc
disp("Example 1.55")
printf("\n")
disp("Calculate maximum & minimum forward voltage drop and Junction dynamic resistance")
T1=80
T2=10
T=25
//for germanium diode
v=(-2.2*10^-3)
Vft1=0.3
Vft2maximum=Vft1+((T2-T)*v)    //voltage drop at 10c
Vft2minimum=Vft1+((T1-T)*v)    //voltage drop at 80c
IF=20*10^-3
rd1=(26*10^-3/IF)*((T2+273)/298)
rd2=(26*10^-3/IF)*((T1+273)/298)
printf("Maximum and Minimum Forward voltage drop at 25c and 10c=\n%f volt\n%f volt\n",Vft2maximum,Vft2minimum)
printf("Dynamic resistance at 10c and 80c=\n%f ohm\n%f ohm\n",rd1,rd2)
