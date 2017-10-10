// Example 5_10
clc;funcprot(0);
// Given data
A_w=100;// The wake area in m^2
x=100;// m
// From example 5.7,
rho_w=0.4;// The density of air in kg/m^3
V_f=250;// The speed of flight in m/s
F=2.6*10^4;// The restraining force in N

// Calculation
V_w=V_f+(F/(rho_w*A_w*V_f));// m/s
printf("\nThe wake speed,V_w=%3.1f m/s",V_w);
