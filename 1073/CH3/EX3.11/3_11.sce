clc;
clear;
//Example 3.11
mu=1.906*10^-5    //[kg/(m.s)]
k=0.02723    //W/m.K
Cp=1.007    //[kJ/(kg.K)]
rho=1.129    //[kg/cubic m]
Npr=0.70
Mavg=29
u_inf=35    //[m/s]
L=0.75    //[m]
Tm=313    //[K]
P=101.325    //[kPa]
Nre_l=rho*u_inf*L/mu    //Reynold's number >5*10^5
Nnu=0.0366*Nre_l^(0.8)*Npr^(1.0/3.0);
h=Nnu*k/L    //[W/s m.K]
A=1*L    //[sq m]
Tw=333    //[K]
T_inf=293    //[K]
Q=h*A*(Tw-T_inf);    //[W]
printf("Heat transfer from the plate is %f W",Q);