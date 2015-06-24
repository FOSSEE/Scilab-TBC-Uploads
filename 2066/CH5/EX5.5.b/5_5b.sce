clc
clear
//Initialization of variables
hl=2140 //ft-lb/ft^3
spg=0.93
mu=3.1e-3 //lb-sec/ft^2
gam=62.4
z=50 //m
p1=60 //psia
p2=25 //psia
d=1 //in
//calculations
V= hl*(d/12)^2 /(32*mu*z)
Q=V*%pi/4 *(d/12)^2
Q2=Q*7.48*60
//results
printf("Flow rate = %.2f gal/min",Q2)
