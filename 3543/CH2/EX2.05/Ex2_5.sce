// Example 2.5 
// Computation of (a) normalized frequency and (b) no. of guided modes
// Page no 480

clc;
clear;
close;

//Given data
lambda=0.85*10^-6;      // wavelength of fiber
a=40*10^-6;             // core diameter of fiber
delta=0.015;            // relative refractive index 
n1=1.48;                // refractive index of core

// (a) Normalized frequency 
v=(2*%pi*a*n1*(2*delta)^(1/2))/lambda; 
//(b) Number of guided modes
m=v^2/2;       
m=ceil(m);
//Displaying results in the command window            
printf("\n Normalized frequency is = %0.1f  ",v);
printf("\n Number of guided modes = %0.0f  ",m);
