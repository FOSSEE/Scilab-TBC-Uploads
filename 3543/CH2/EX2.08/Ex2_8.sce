// Example 2.8
// Calculation of normalized frequency and no of guided modes
// Page no 481
clc;
clear;
close;

//Given data
lambda=1.55*10^-6;         // Wavelength of fiber
a=4*10^-6;                 // Core diameter of fiber
delta=0.01;                // Relative refractive index 
n1=1.48;                   // Refractive index of core
// (a) Normalized frequency 
v=(2*%pi*a*n1*(2*delta)^(1/2))/lambda; 
//(b) Number of guided modes
m=v^2/2;                               

//Displaying results in the command window            
printf("\n Normalized frequency = %0.3f  ",v);
printf("\n Number of guided modes = %0.0f  ",m);
// The answers vary due to round off error
