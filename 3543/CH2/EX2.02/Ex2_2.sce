// Example 2.2 
// Calculation of numerical aperature
// Page no. 479

clc;
clear;
close;

//Given data
v=2.111;                  // Mode parameter
a=4.01*10^-6;             // Core radius in m
lambda=1.3*10^-6;         // Wavelength of laser light m

//Numerical aperture computation
NA=(v*lambda)/(2*%pi*a); 

//Displaying the result in command window
printf("\n Numerical aperature = %0.2f",NA);



