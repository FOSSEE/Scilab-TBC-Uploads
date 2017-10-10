// Example 6.38
// Calculation of a) quantum efficiency b) responsivity
// Page no 494

clc;
clear;
close;

//Given data
e5=1.2*10^11;                            // No of electrons collected
e8=3.6*10^11;                            // No of incident photon
e=1.602*10^-19;                         // Charge of an electron
lambda=0.85*10^-6;                      // Wavelength 
h=6.626*10^-34;                        // Planck constant 
c=3*10^8;                              // Velocity of light
I=15*10^-6;                            // Photocurrent
P=0.6*10^-6; 

// a)Quantum efficiency
n=e5/e8;
// b)Responsivity
R=(n*e*lambda)/(h*c);


//Displaying results in the command window            
printf("\n Quantum efficiency = %0.2f  ",n);
printf("\n Responsivity(in A/W) = %0.3f  ",R);

// The answers vary due to round off error
