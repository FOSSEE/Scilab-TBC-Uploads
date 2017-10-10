// Example 6_6
clc;funcprot(0);
// Given data
V=0.1;// The speed of coating liquid in m/s
nu=1.0*10^-6;// The liquid kinematic viscosity in m^2/s
g=9.807;// The acceleration due to gravity in m/s^2

// Calculation
h=sqrt((2*nu*V)/g);// m
printf("\nThe film thickness h=%1.3e m",h);
