
//example 9.2
//page 311
clc; funcprot(0);
//initialisation of variable
L=100;//length
D=0.2;//diameter
hf=5.43;//head loss
g=9.81
pi=3.14;
f=0.021//friction coeff.
A=sqroot(2*g*D*hf/L);//area
V=A/sqroot(f);
Q=V*pi*D^2/4;
disp(Q,"flow rate (m^3/s)=");
clear
