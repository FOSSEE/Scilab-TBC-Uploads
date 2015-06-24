clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
d=9 //m
dia=0.3 //m
//calculations
V302= 2*g*d/(0.5 + 20 + 2.53+101+0.66+41.47+2.07)
V30=sqrt(V302)
Q=%pi/4 *dia^2 *V30
//results
printf("Flow rate = %.3f m^3/s",Q)
