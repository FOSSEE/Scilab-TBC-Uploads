clear
clc
//Example 6.13 RESISTING MOMENT ON REDUCING BEND
r1=0.15; //[m]
r2=0.475; //[m]
d1=0.3; //[m]
d2=0.15; //[m]
A1=%pi*d1^2/4 //[m^2]
A2=%pi*d2^2/4 //[m^2]
p1=150*10^3; //[Pa]
p2=59.3*10^3; //[Pa]
//Torque due to pressure
Mp=(r1*p1*A1)+(r2*p2*A2) //[N.m]

rho=998; //density[kg/m^3]
Q=0.25; //discharge[m^3/s]
m=rho*Q //mass flow rate[kg/s]
v1=Q/A1 //[m/s]
v2=Q/A2 //[m/s]
Mi=-m*r1*v1 //moment due to inflow
Mo=m*r2*v2 //moment due to outflow
//Moment of momentum flow
Mm=Mo-Mi

d=0.2; //[m]
W=1420; //weight[N]
//Moment due to weight
Mw=d*W

//Moment exerted by support
M=(-Mp-Mm+Mw)*10^-3 //[kN.m]
printf("\n The moment that the support system must resist, M = %.2f kN.m.\n",-M)