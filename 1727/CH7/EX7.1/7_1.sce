clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
h1=4 //m
muw=0.001 //Ns/m^2
l=1.5 //m
B=0.15/1000 //m
len=11.2 //m
//calculations
P1=g*rho*h1
V=P1*B^2 /(12*muw*l)
A=B*len
Q=A*V
Q=7112.4
tau= B/2 *(P1)/l
//results
printf("Average velocity through the crack = %.3f m/s",V)
printf("\n rate of leakage = %.1f l/hr",Q)
printf("\n Shear stress = %.3f N/m^2",tau)
