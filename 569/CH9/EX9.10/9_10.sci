// calculate diameter of the tube
clc;
P=100*10^3;
g=9.81;
di=10*10^-3;
D=40*10^-3;
A= (%pi/4)*D^2;
dm=13.6*10^3;
a=A/[P/(dm*g*di)-1];
d=(4*a/%pi)^0.5*10^3;
disp(d,'diameter of the tube(mm)')
