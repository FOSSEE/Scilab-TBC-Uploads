// Example 6.35
// Calculation of a) responsivity b)incident optical power
// Page no 493

clc;
clear;
close;

//Given data
n=0.6;                         // Quantum efficiency
e=1.602*10^-19;                // Charge of electron
lambda=0.9*10^-6;              // Wavelength 
h=6.626*10^-34;                // Planck constant 
c=3*10^8;                      // Velocity of light
I=2*10^-6;                     // Photocurrent

// a)Responsivity
R= (n*e*lambda)/(h*c);

// b)Incident power
P=I/R;
P=P*10^6;


//Displaying results in the command window            
printf("\n Responsivity(in A/W) = %0.3f  ",R);
printf("\n Incident power (in microwatt) = %0.3f  ",P);

// The answers vary due to round off error
