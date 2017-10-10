// Example 6.1
// Calculation of the gain
// Page no 249

clc;
clear;
close;

//Given data

n=1.5;                    // Refractive ondex of air
lambda=1550*10^-9;        // Wavelength 
c=3*10^8;                 // Velocity of light
p=5.73*10^-17;            // Power spectral density
h=6.63*10^-34             // Planck constant


// Gain
f=c/lambda;

G=(p/(2*n*h*f))+1;

//Displaying results in the command window            
printf("\n Gain G = %0.0f  ",G);





