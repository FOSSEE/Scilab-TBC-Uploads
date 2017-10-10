// Example 4.21  
// Calculation of wavelength seperation between longitudinal modes.
// Page no 486

clc;
clear;
close;

//Given data
lambda=0.85;                   // Wavelength
n1=3.6;                        // Refractive index of GaAs
L=200*10^-6;                   // Length of cavity

// Wavelength seperation between longitudinal modes.
lambda1=((lambda)^2)*(10^-12)/(2*n1*L);   
lambda1=lambda1*10^9;

//Displaying results in the command window
printf("\n Wavelength seperation (in nm^2) = %0.1f ",lambda1);
