clc
// Intialization of variables
Q = 1000*(10)^(-6) // m^3/s
D = 999 // Kg/m^3
r2 = 0.2 // m
V2 = 16.7 // m/s
W = 500*(2*%pi)/60 // rad/s
// Calculations
M = Q*D // Kg/s
Ts = - M*V2*r2 // N/m
V02 = V2 - r2*W // m/s
Ts1 = -r2*(V02)*D/1000 // N.m 
W1 = (V2/r2)*(60/(2*%pi)) // rpm Conversion included
// results
printf("the resisting torque required to hold the sprinkler head stationary is %.2f N.m",Ts)
printf("\n the resisting torque required to hold the sprinkler rotating at 500 rev/min is %.2f N.m",Ts1)
printf("\n the speed of the sprinkler if no torque is applied is %.f rpm ",W1)
