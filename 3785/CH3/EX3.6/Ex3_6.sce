// Example 3_6
clc;funcprot(0);
// Given data
Q=1*10^3;// The water volume flow rate in m^3/s
D=2;// The diameter of the fire hose at exit nozzle in inch

// Calculation
V=(4*(Q/60)*3.785*10^-3)/(%pi*(D*2.54*10^-2)^2);// The velocity of the water leaving the nozzle in m/s
// We have used table 1.6 to convert gallons to cubic meters.
printf("\nThe velocity of the water leaving the nozzle,v=%2.2f m/s",V);
