clc
clear
//Initialization of variables
d=8 //in
V=3.65 //ft/s
u1=4.75 //ft/s
r0=4 //in
//calculations
f=0.0449
Q=V*%pi/4 *(d/12)^2
Vs=(u1-V)/3.75
r0e=10^((u1/Vs - 8.5)/5.75)
e=r0/r0e
//results
printf("Flow rate = %.2f ft^3/s",Q)
printf("\n roughness factor = %.3f in",e)
