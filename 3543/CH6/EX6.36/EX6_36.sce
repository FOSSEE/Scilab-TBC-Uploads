// Example 6.36
// Calculation of a) responsivity b)Multiplication factor
// Page no 493

clc;
clear;
close;

//Given data
n=0.8;                            // Quantum efficiency
e=1.602*10^-19;                   // Charge of an electron
lambda=0.9*10^-6;                 // Wavelength 
h=6.626*10^-34;                   // Planck constant 
c=3*10^8;                        // Velocity of light
I=15*10^-6;                      // Photocurrent
P=0.6*10^-6;

// a)Responsivity
R= (n*e*lambda)/(h*c);
// b)Multiplication factor
Ip=P*R;
M=I/Ip;


//Displaying results in the command window            
printf("\n Responsivity(in A/W) = %0.3f  ",R);
printf("\n Multiplication factor = %0.2f  ",M);

// The answers vary due to round off error
