clc
// Intialization of variables
r1 = 1 //m
r2 = 0.5 //m
V1 = 4*r1 //m
V2 = 4*r2 //m
D = 10^3 // m
P1 = 30*1000 // N/m^2
// Calculations
P2 = P1 + D*(V1^2 - V2^2)/2
// Results
printf(" pressure at point (2) is %.f kPa",P2/10^3)
