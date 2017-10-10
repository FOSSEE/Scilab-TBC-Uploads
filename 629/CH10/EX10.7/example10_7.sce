clear
clc
//Example 10.7 PIPE SYSTEM WITH COMBINED HEAD LOSS
//From energy equation, z1=z2+hL
z2=130; //[m]
g=9.81; //[m/s^2]
L=197; //[m]
D=0.15; //diameter[m]
A=%pi*D^2/4; //area[m^2]
Q=0.028; //[m^3/s]
V=Q/A //[m/s]
v=4*10^-5; //[m^2/s]
//Reynolds number
Re=V*D/v 
//Re>3000, flow is turbulent
//Minor head coefficients
Ke=0.5; //entrance
Kb=0.19; //bend
KE=1.0; //outlet
//Swamee-Jain equation, ks/D is neglected
f=0.25/(log10(5.74/Re^0.9))^2
//head loss
hL=(V^2/(2*g))*(f*L/D+2*Kb+Ke+KE)
z1=z2+hL //[m]
printf("\nThe elevation of the oil surface in the upper reservoir = %.f m.\n",z1)
