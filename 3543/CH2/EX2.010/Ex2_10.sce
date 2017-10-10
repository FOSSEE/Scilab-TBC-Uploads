// Example 2.10
// Calculation of Cut off wavelength
// Page no 482

clc;
clear;
close;

// Given data
V=2.403;              // Normalized frequency
delta=0.25;           // Refractive index of core
n1=1.46;              // Relative refractive index
a=4.5*10^-6;          // Radius of core

// Cut off wavelenth
lambda=(2*%pi*a*n1*(sqrt(2*delta)))/V;       

//Display result on command window
printf("\n Cut off wavelenth(nm) = %0.0f  ",lambda*10^8);

// The answers vary due to round off error
