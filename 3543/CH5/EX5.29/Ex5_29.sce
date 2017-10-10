// Example 5.29 
// Computation of cut off wavelength
// Page no 489

clc;
clear;
close;

// Given data
h=6.626*10^-34;            // Planck constant
c=3*10^8;                  // Speed of light
Eg= 0.7*1.602*10^-19;      // Bandgap energy

// Cut off wavelength 
lambda= h*c/Eg;                    
//Display result on command window
printf("\n Cut off wavelength (micrometer) = %0.2f  ",lambda*10^6);


