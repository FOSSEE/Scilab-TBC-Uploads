clc
clear
//Initialization of variables
e0=0.00085 //ft
alpha=0.25 ///year
t=15 //years
r0=3 //in
Q=500 //gal/min
d=6 //in
mu=2.04e-5 //lb-sec/ft^2
rho=1.94 //slugs/ft^3
g=32.2 //ft/s^2
L=1 //ft
gam=62.4
//calculations
e15=e0*(1+ alpha*t)
ratio=r0/(12*e15)
V=Q/(7.48*60*%pi/4 *(d/12)^2)
Nr=V*d*rho/(mu*12)
f=0.036
hl=f*L/(d/12) *V^2 /(2*g)
dp=gam*hl
//results
printf("Pressure difference = %.2f lb/ft^2 per foot of horizontal pipe",dp)
