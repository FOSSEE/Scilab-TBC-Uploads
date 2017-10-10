// Example 5_6
clc;funcprot(0);
// Given data
m=2;// The mass flow rate in kg/s
V_e=200;// The rocket exhaust velocity in m/s

// Calculation
F=m*V_e;// The restraining force required to hold the rocket in place in N
printf("\nThe restraining force required to hold the rocket in place,F_c=%0.0f N",F);
