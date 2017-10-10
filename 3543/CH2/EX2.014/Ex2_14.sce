// Example 2.14 
// Calculation of critical wavelength
// Page no 483

clc;
clear;
close;

//Given data
a=3*10^-6;            // Core diameter of fiber
delta=0.15;           // Relative refractive index 
v=2.405;              // Normalized frequency

// Critical wavelength
lambda=(2*%pi*a*delta)/v;
lambda=lambda*10^9;

//Displaying The Results in Command Window
printf("\n Critical wavelength (nm)= %0.0f  ",lambda);

// The answers vary due to round off error
