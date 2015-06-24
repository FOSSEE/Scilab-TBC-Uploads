clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
pst=25.2*10^3 //Pa
h=2.5 //m
//calculations
v=sqrt(2/rho *(pst - g*rho*h))
//results
printf("velocity = %.2f m/s",v)
