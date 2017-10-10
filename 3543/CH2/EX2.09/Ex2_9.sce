// Example 2.9 
// Calculation of Core radius
// Page no 481

clc;
clear;

//Given data
lambda=0.85*10^-6;           // Wavelength of fiber
delta=0.015;                 // Relative refractive index 
n1=1.48;                     // Refractive index of core
v=2.403;                     // Normalized frequency for single mode fiber
// Computation of core radius
a=v*lambda/(2*%pi*n1*sqrt(2*delta));
a=a*10^6;

//Displaying result in the command window            
printf("\n Radius of core (in micrometer) = %0.1f  ",a);

