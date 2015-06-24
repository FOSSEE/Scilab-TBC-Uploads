// Example 5.5: drift velocity
clc, clear
// given :
format('v',5)
n=10^19; // in m^3
b=0.01; // conductivity in ohm^-1. m^-1
V=0.17; // in volts
d=.27*10^-3; // in m
e=1.602*10^-19; // in C
m=9.1*10^-31; // in kg
E=V/d; // in volt/m
v=((b*E)/(n*e));
disp(v,"drift velocity of electron,v (m/sec) = ")
