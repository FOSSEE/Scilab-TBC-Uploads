//Chapter 19,Example 6,page 675
//Determine the current density
clear
clc
E0 = 8.84*10^-12
Us = 1.5*10^-3*10^-4
V = 100
d3 = 10^-6 // d^3
J = 4*E0*Us*V^2/d3
printf("\n Current density = %e A/m^2",J)

// Answer may vary due to round off error
