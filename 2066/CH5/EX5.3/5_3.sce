clc
clear
//Initialization of variables
m=1155 //lb
gam=62.4
spg=0.93
t=3*60 //sec
d=1/6 //in
L=20 //ft
dp=2.5 //psi
//calculations
Q=m/(t*spg*gam)
A=%pi/4 *d^2
V=Q/A
mu=dp*d^2 *144/(32*V*L)
//results
printf("Viscosity of oil = %.4f lb-sec/ft^2",mu)
