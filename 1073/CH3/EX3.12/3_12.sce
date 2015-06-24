clc;
clear;
//Example 3.12
v=18.23*10^-6    //sq m/s
k=0.02814    //[W/m.K]
D=0.012    //[m]
r=0.006    //[m]
u_inf=4    //[m/s]
Nre=D*u_inf/v    //Reynold's number
Nnu=0.37*Nre^(0.6);
h=Nnu*(k/D)    
A=4*%pi*r^2    //Area of sphere in [sq m]
Tw=350    //[K]
T_inf=300    //[K]
Q=h*A*(Tw-T_inf)    //Heat lost by sphere in [W]
printf("\n Heat lost by sphere is %f W",Q);