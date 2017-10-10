// Example 5.28 
// Computation of  cut off wavelength
// Page no 488

clc;
clear;
close;

// Given data
h=6.626*10^-34;          // Planck constant.
c=3*10^8;                // Speed of light
Eg= 1.43*1.602*10^-19;   // Bandgap energy

// Cut off wavelength 
lambda= h*c/Eg; 

//Display result on command window
printf("\n Cut off wavelength (micrometer) = %0.3f  ",lambda*10^6);
