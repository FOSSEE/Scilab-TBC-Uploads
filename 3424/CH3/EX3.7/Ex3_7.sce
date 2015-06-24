clc
//Initialization of variables
g = 9.81 // m/s^2
h = 0.20 // m
d = 0.01 // m
D = 0.20 // m
// Calculations
A2 = (%pi*(d)^2)/4 // m^2
V2 = ((2*g*h)/(1 - (d/D)^4))^0.5 // m/s
Q = A2*V2 // m^3/s
// Results
printf(" the flow rate is %.2e m^3/s",Q)
