clc
clear
//Initialization of variables
h=6 //m
rho=930 //kg/m^3
Q=3/60 //m^3/s
d=0.15 //m
L=20 //m
mu=0.006
g=9.81 //m/s^2
//calculations
V=Q/(%pi/4 *d^2)
RN=V*d*rho/mu
f=0.316/RN^0.25
hl=f*L/d *V^2 /(2*g)
Hp=h+hl
gam=rho*g
W=gam*Q
Power= W*Hp
//results
printf("Power required  = %.3f kW",Power/1000)
