clc
//Initialization of variables
z=260 //ft
f=0.02
//calculations
V2by2g=z/(1.11*256 + 6000*f)
V2=V2by2g*2*32.2
V=sqrt(V2)
Q=0.545*V
V3=16*V
H=z-f*6000*V2by2g
//results
printf("rate of discharge = %.2f cfs",Q)
