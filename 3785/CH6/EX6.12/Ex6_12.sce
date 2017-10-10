// Example 6_12
clc;funcprot(0);
// Given data
// From Example 6_4
h=0.1;// The gap betwen the shaft and the bearing in mm
mu=6.7*10^-5;// Viscosity in Pa/s
rho=8.0*10^2;// kg/m^3

//Calculation
// (b)
t=(rho*(h*10^-3)^2)/mu;// s
printf("\nThe numerical value of t is %0.4f s",t);
