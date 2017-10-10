// Example 2.6 
// Computation of normalized frequency and no of guided modes
// Page no 480
clc;
clear;
close;

//Given data
lambda=1.30*10^-6;        // Wavelength of fiber
a=25*10^-6;               // Core diameter of fiber
delta=0.01;               // Relative refractive index 
n1=1.50;                  // Refractive index of core

// (a) Normalized frequency 
v=((2*%pi*a*n1)/(lambda))*((2*delta)^(1/2)); 
//(b) Number of guided modes
m=v^2/2;                    
//m=ceil(m);

//Displaying results in the command window            
printf("\n Normalized frequency = %0.2f  ",v);
printf("\n Number of guided modes = %0.0f  ",m);

//Answer varies due to round off error
