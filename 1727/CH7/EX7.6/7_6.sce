clc
//Initialization of variables
g=9.81 //m/s^2
rho=813 //kg/m^3
Q=0.007 //m^3/hr
d=0.01//m
mu=0.002 //Ns/m^2
l=30 //m
//calculations
V=Q/(60*%pi/4*d^2)
RN=V*d*rho/mu
f=0.316/RN^(0.25)
h=(1+f*l/d)*V^2 /(2*g)
//result
printf("Height required = %.2f m",h)
