clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
hl=0.02
d=1.2 //m
l=1 //m
k=0.5 *10^-2 //m
//calculations
v2f=hl*(2*g*d)/l
e=k/d
f=0.028
V=sqrt(v2f/f)
Q=%pi/4 *d^2 *V
//results
printf("Rate of flow = %.2f m^3/s",Q)
