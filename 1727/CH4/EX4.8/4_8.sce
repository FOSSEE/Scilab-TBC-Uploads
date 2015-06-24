clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
d1=0.05 //m
d2=0.3 //m
N=1800 //rpm
Q=0.425/60 //m^3/s
//calculations
u1=%pi*d1*N/60
u2=%pi*d2*N/60
T=rho*Q*(d2*u2 - d1*u1)/2
//results
printf("Torque supplied = %.1f Nm",T)
