// Example 3_5
clc;funcprot(0);
// Given data
R=1;// The radius of a cylindrical tank in m
V_w=1;// The  velocity in mm/s

// Calculation
Q=%pi*R^2*V_w*10^-3;// The volume flow rate of water through the pump in m^3/s
printf("\nThe volume flow rate Q of water through the pump is %1.3e m^3/s",Q);
