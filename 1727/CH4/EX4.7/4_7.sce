clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
v1=20 //m/s
v2=5 //m/s
r1=50/100 //cm
r2=30/100 //cm
a1=20 //degrees
a2=80 //degrees
N=300 //rpm
Q=5 //m^3/s
//calculations
u1=%pi*2*r1*N/60
u2=%pi*2*r2*N/60
T=rho*Q*(r1*v1*cosd(a1) - r2*v2*cosd(a2))
H=1/g *(u1*v1*cosd(a1) - u2*v2*cosd(a2))
power=rho*g*Q*H
//results
printf("torque = %d N m",T)
printf("\n Heat = %.1f m",H)
printf("\n Power = %d kW",power/10^3)
//The answers given in textbook are a bit different due to rounding off error
