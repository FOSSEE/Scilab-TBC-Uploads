// Scilab Code Ex12.2: Page-12.13 (2004)
clc;clear;
n1 = 1.53;    // Refractive index of fibre core
n2 = 1.50;    // Refractive index of fibre cladding
lamb = 1e-6;   // absolute wavelength. m
d = 50e-6;  //  radius of core in m
V = 2*%pi/lamb*d*sqrt(n1^2 - n2^2);    // volume of opical fibre
N = V^2/2;  //  no. of possible modes
printf("\nV of opical fibre = %6.2f ", V);
printf("\nNo. of possible modes = %5.3f ", N);

// Results
// V of opical fibre =  94.72 
// No. of possible modes = 4485.735  
