// Example 8_2
clc;funcprot(0);
// Given data
D=2;// The diameter of the pipe in inch
h_in=10;// Elevation in m
Q=425;// The volumetric flow rate in gal/min
g=9.807;// The acceleration due to gravity in m/s^2

// Calculation
D=D*2.54*10^-2;// m
Q=(Q*3.785*10^-3)/60;// The volumetric flow rate in m^3/s
V=(4*Q)/(%pi*D^2);// m/s
deltah=h_in-(V^2/(2*g));// m
printf("The reduction in head,h_in-h_out=%1.3f m",deltah);
