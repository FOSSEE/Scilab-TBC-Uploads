// Example 5_4
clc;funcprot(0);
// Given data
Q=150;// The water stream volume flow rate in gal/min
D=1;// The nozzle exit diameter in inch
rho=1*10^3;// The density of water in kg/m^3

// Calculation
Q=(Q*3.785*10^-3)/60;// The water stream volume flow rate in m^3/s
V_out=(4*Q)/(%pi*(D*2.54*10^-2)^2);// The velocity in m/s
F_e=rho*Q*V_out;// The force in N
F_e=F_e/4.448;// The force in lbf
printf("\nThe force,F_e=%2.2f lbf",F_e);
