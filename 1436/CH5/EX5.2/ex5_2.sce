// Example 5.2, page no-310
clear
clc

D=40
d=20
mr=15
h=(13.6-1)*15*10
B=d/D
M=1/sqrt(1-B^4)
//printf("%f\n",B)
Cd=0.5999
x=sqrt(2*9.8*h*10^-3)
Q=x*Cd*M*(3.14*(20*10^-3)^2)/4
Q=Q*3600
printf("Volumetric flow rate Q= %.4f m^3/hr",Q)
