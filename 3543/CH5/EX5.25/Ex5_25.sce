// Example 5.25
// Computation of (a) quantum efficiency and (b) resposivity
// page no 487

clc;
clear;
close;

//Given data
nh=1.5*10^12;                 // No. of hole pairs generated
np=2.5*10^12;                 // No. of incident photons
lambda=0.85*10^-6;            // Wavelength of laser source 
c=3*10^8;                     // Speed of light
h=6.62*10^-34                 // Planck constant
e1=1.6*10^-19;                // Electronic charge

// (a)  Quantum efficiency
e=nh/np;                            

// (b) Responsivity
R=e*(lambda*e1)/(h*c);                       //

//Display result on command window
printf("\n Quantum efficiency = %0.1f  ",e);
printf("\n Responsivity R (A/W) = %0.3f  ",R);
