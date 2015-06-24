//Example 2.8
//Program to estimate cutoff wavelength for a step index fiber to 
//exhibit single mode operation

clear;
clc ;
close ;

//Given data
a=4.5*10^(-6);          //metre - CORE RADIUS
n1=1.46;                //CORE REFRACTIVE INDEX 
delta=0.0025;           //RELATIVE REFRACTIVE INDEX DIFFERENCE

// The cutoff wavelength for a step index fiber
lambda_c=2*%pi*a*n1*sqrt(2*delta)/2.405;

//Displaying The Results in Command Window
printf("\n\n\t The cutoff wavelength for a step index fiber to exhibit single mode operation is %1.0f nm.",lambda_c*10^9);