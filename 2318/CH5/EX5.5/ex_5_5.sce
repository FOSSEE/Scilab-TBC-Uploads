//Example 5.5: Flux density and relative permeability
clc;
clear;
close;
//given data :
format('v',4)
A=5*10^-4;// in m^2
d=25*10^-2;// in m
l=%pi*d;
N1=150;// turns
N2=300;// turns
k=2*10^-6;// coulomb per division
R=2500;// in ohm
I=10;// in A
theta=75;// in division
mu_0=4*%pi*10^-7;
B=(k*theta*R)/(2*N2*A);
disp(B,"Flux density,B(Wb/m^2) = ")
H=(N1*I)/l;
mu_r=(B/(mu_0*H));
disp(mu_r,"Relative permeability, = ")
