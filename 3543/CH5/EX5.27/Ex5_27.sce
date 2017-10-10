// Example 5.27
// Computation of (a)resposivity (b)output current and (c)multiplication factor
// Page no 488

clc;
clear;
close;

//Given data
e=0.7;                  // Quantum efficiency
c=3*10^8;               // Speed of light
h=6.62*10^-34           // Planck constant
E=1.5*10^-19;           // Energy of photons
lambda=0.85*10^-6       // Wavelength of laser source
P=0.6*10^-6;            // Incident light power
e1=1.6*10^-19;          // Electronic charge
I=10*10^-6;             // Output current of the device                

// (a) Responsivity
R=e*(lambda*e1)/(h*c);                       

// (b) Photocurrent
Ip=R*P;

// (c) Multiplication factor
M=I/Ip

//Display result on command window
printf("\n Responsivity R (A/W) = %0.3f  ",R);
printf("\n Output current Ip (microA) = %0.3f  ",Ip*10^6);
printf("\n Multiplication factor M = %0.0f  ",M);

//Calculation mistake in (b)Phtocurrent in the book
