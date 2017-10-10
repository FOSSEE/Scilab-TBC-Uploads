// Example 2.1
// Calculation of core diameter
// Page no 31

clc;
clear;
close;

// Given data
n1=1.5;               // Refractive index of core
n2=1.48;              // Refractive index of cladding
N=1000;               // No of modes
lambda=1.3;           // Light wavelength
V=sqrt(2*N);          // Mode parameter

//core diameter
d=(lambda*V)/(2*%pi*sqrt(n1^2-n2^2));   


//Display result on command window
printf("\n Mode parameter = %0.2f  ",V);
printf("\n Core diameter(micrometer)= %0.0f  ",d);

// Answer is wrong in the book.
