// Example 8.50
// Calculation of signal to noise ratio.
// Page no 499

clc;
clear;
close;

//Given data

h=6.62*10^-34;                       // Planck constant
c=3*10^8;                           // velocity of light
lambda=1.55*10^-6;                 // Wavelength
B=400*10^6;                        // Speed of communication
s=2;
// S/N ratio

sn=(s*4.24)/(2^(1/2));
i=(sn)^2;

//Displaying results in the command window            
printf("\n Incident optical power(in nW) = %0.20f  ",i);


// The answer is wrong in the book

