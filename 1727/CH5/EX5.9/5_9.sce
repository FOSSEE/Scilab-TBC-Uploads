clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
Q=0.012 //m^3/s
z=10 //m
d=0.075 //m
//calculations
Vb=Q/(%pi/4 *d^2)
Hm=z+ Vb^2 /(2*g)
P=Hm*rho*g*Q
//results
printf("Power required = %.3f kW",P/1000)
