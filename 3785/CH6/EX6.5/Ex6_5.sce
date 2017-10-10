// Example 6_5
clc;funcprot(0);
// Given data
W=1.0;// Width of concrete slabs in m
L=0.1;// Depth in m
h=1.0;// Width of a crack in mm
mu=1.13*10^-3;// Pa s
rho=1*10^3;// The density of water in kg/m^3
g=9.807;// The acceleration due to gravity in m/s^2

// Calculation
Q=(rho*g*(h*10^-3)^3*W)/(12*mu);// m^3/s (or) l/s
printf("\nThe volume flow rate of rainwater through the crack,Q=%1.3e m^3/s (or) %0.4f l/s",Q,Q*1000);
