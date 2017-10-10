// Example 2.1 
// Compuatation of mode parameter
// Page no. 479

clc;
clear;
close;

//Given data
n1=1.503; // refractive index of core
n2=1.50; // refractive index of cladding
a=4*10^-6; // core radius
lambda=1*10^-6; // light wavelength

// Mode parameter computation
V=(2*%pi*a*sqrt(n1^2-n2^2))/(lambda);

//Displaying the result in command window
printf("\n Mode parameter is = %0.3f ",V);

// The answer vary due to round off error


