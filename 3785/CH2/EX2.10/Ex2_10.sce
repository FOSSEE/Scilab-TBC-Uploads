// Example 2_10
clc;funcprot(0);
// Given data
rho_w=1*10^3;// The density of water in kg/m^3
r=7.3*10^-2;// The air/water interfacial tension in N/m
g=9.8066;// The acceleration due to gravity in m/s^2

// Calculation
d=sqrt((6*r)/(rho_w*g))*10^3;// The approximate maximum diameter d of a bubble of air in water in mm
printf("\nThe approximate maximum diameter d of a bubble of air in water is %1.1f m",d);
