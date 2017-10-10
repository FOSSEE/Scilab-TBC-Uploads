// Example 10.1
// Calculation of the non linear coeffifient.
// Page no 429

clc;
clear;
close;

//Given data
n2=2.5*10^-20;                      // Kerr coefficient
lambda=1550*10^-9;                 // Wavelength
A=80*10^-12;                       // Effective area



// Non linear coeffifient
g=(n2*2*%pi)/(lambda*A); 
g=g*10^3;


//Displaying results in the command window            
printf("\n Nonlinear coefficient = %0.3f W^-1m^-1 ",g);

