// Example 6_8
clc;funcprot(0);
// Given data
H=3;// Distance in m
L=30;// Length in cm
D=3;// Diameter in mm
V=100;// cm^3
t=152;// s
g=9.807;// The acceleration due to gravity in m/s^2

// Calculation
Q=(V*10^-6)/t;// The flow rate in m^3/s
nu=((%pi*((D*10^-3)^4)*g)/(128*Q))*(1+(H/L));// The kinematic viscosity of the oil mixture in m/s^2
printf("\nThe kinematic viscosity of the oil mixture is %1.3e m^2/s",nu);
// The answer provided in the text book is wrong
