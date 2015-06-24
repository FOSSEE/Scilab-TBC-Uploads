clc
//Initialization of variables
g=9.81 //m/s^2
rho=870 //kg/m^3
Q=2*10^-3 //m^3/s
d=0.03 //m
mu=5*10^-4
l=50 //m
//calculations
V=Q/(%pi/4 *d^2)
RN=rho*V*d/mu
f=0.017
hl=f*l/d *V^2/(2*g)
Ploss=rho*g*hl
//results
printf("Loss of pressure = %.1f kN/m^2",Ploss/1000)
//The answers are a bit different due to rounding off error in textbook
