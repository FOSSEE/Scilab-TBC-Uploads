// Example 1_8
clc;funcprot(0);
// Given data
rho=1000;// The density of water in kg/m^3
g=9.81;// m/s^2
h=600;// m
d=1;// m

// Calculation
P=rho*g*h;// Pa
A=(%pi*d^2)/4;// m^2
F=P*A;// The force due to pressure in N
printf("\n The force due to pressure,F=%1.2e N",F);
