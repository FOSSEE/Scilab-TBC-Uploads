// Example 5.26
// Computation of (a) wavelength (b) power and (c) resposivity
// page no 488

clc;
clear;
close;

//Given data
e=0.7;                     // Quantum efficiency
c=3*10^8;                  // Speed of light
h=6.62*10^-34              // Planck constant
E=1.5*10^-19;              // Energy of photons
e1=1.6*10^-19;             // Electronic charge
I=4*10^-6;                 // Diode photocurrent
// (a) Wavelength of operation
lambda=h*c/E;                    

// (b) Responsivity
R=e*(lambda*e1)/(h*c);                       //

// (c) Incident optical power 
p=I/R;                                //power

//Display result on command window
printf("\n Wavelength of operation (micrometer)= %0.3f  ",lambda*10^6);
printf("\n Responsivity R (A/W) = %0.3f  ",R);
printf("\n output power P (microwWatt) = %0.3f  ",p*10^6);
