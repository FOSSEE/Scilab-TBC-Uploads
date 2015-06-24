clc
// Intialization of variables
D = 999 // kg/m^3
Q = 0.6 //lt/s
d1 = 0.016 //m
d2 = 0.005 //m
A1 = (%pi/4)*(d1)^2
A2 = (%pi/4)*(d2)^2
g = 9.81 // m/s^2
Mn = 0.1 //Kg
Mw = 3*(10)^(-3)
// Calculations
M = D*Q*0.001
V1 = Q*(0.001)/A1 // m/s conversiom imcluded
V2 = Q*(0.001)/A2 // m/s conversiom imcluded
Wn = g*Mn
Ww = g*Mw 
Fa = M*(V1 - V2) + Wn + (464000)*A1 + Ww - 0 // N
//results
printf(" the anchoring force required is %.1f N",Fa)
