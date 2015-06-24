clc
clear
//Initialization of variables
z1=2 //ft
Q=0.1 //gal/min
alpha=2
g=32.2 //ft/s^2
L=4 //ft
D=1/96 //ft
//calculations
v2=Q/(7.48*60* %pi/4 *D^2)
hl=z1-alpha*v2^2 /(2*g)
Nr=64/hl *L/D *v2^2 /(2*g)
mu=v2*D/Nr
//results
printf("Kinematic viscosity = %.2e ft^2/s",mu)
