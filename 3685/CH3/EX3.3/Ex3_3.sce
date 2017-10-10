clc
// Given that
T = 1.275 // Torque acting against the fluid in mN
N = 10000 // Number of revolutions
W1 = 2*%pi*T*1e-3*N // Work done by stirring device upon the system
P = 101.325e03 // Atmospheric pressure in kN/m^2
d = 0.6 // Piston diameter in m
A = (%pi/4)*(d)^2 // Piston area in m
L = 0.80 // Displacement of diameter in m
W2 = (P*A*L)/1000 // Work done by the system on the surroundings i KJ
W = -W1+W2 // net work transfer for the system

printf("\n Example 3.3")
printf("\n The net work transfer for the system is %f kJ",W)
//The answers vary due to round off error

