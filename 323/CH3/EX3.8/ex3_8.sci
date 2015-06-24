//Example 8,Chapter 3
clc;
f=50
Irms=10 //Current in amperes
//(i)
Im=Irms*sqrt(2)
disp('14.14sin(18000t)')
//(ii)
t=0.0025
t=(1/(4*f)) + t
printf("\n t=%.1f ms \n",t*10^3)
i=14.14*sin(18000*7.5*10^-3)
printf("\n i=%.0f A \n",i)
//(ii)
t=0.0075
t=(1/(2*f))+t
printf("\n t=%.1f ms \n",t*10^3)
i=14.14*sin(18000*t*10^-3)
printf("\n i=%.0f A \n",i)




