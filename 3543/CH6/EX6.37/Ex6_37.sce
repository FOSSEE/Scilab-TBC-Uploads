// Example 6.37
// Calculation of a) quantum efficiency b) responsivity
// Page no 494

clc;
clear;
close;

//Given data
e5=500;                            // No of incident photons
e8=800;                            // No of incident electrons
e=1.602*10^-19;                    // Charge of an electron
lambda=1.3*10^-6;                  // Wavelength 
h=6.626*10^-34;                    // Planck constant 
c=3*10^8;                         // Velocity of light
I=15*10^-6;                       // Photocurrent
P=0.6*10^-6;

// a)Quantum efficiency
n=e5/e8;
// b)Responsivity
R=(n*e*lambda)/(h*c);


//Displaying results in the command window            
printf("\n Quantum efficiency (percent) = %0.1f  ",n*100);
printf("\n Responsivity(in A/W) = %0.3f  ",R);

// The answers vary due to round off error
