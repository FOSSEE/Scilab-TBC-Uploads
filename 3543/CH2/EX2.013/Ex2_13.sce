// Example 2.13
// Calculation of (a) core radius and (b) maximum value of angle of acceptance of the fiber
// Page no 483

clc;
clear;
close;

//Given data
lambda=1320*10^-9;          // Wavelength of fiber
delta=0.077;                // Relative refractive index 
n1=1.48;                    // Refractive index of core
n2=1.478;                   // Refractive index of cladding
v=2.403;                    // Normalized frequency

// (a) Core radius
a=v*lambda/(2*%pi*delta);
a=a*10^6;

//Numerical Aperture
NA=sqrt(n1^2-n2^2);

// (b) Angle of acceptance
theata = asind(NA);

//Display result on command window
printf("\n Radius of core (in micrometer) = %0.1f  ",a);
printf("\n Numerical aperture = %0.5f  ",NA);
printf("\n Angle of acceptance (degrees) = %0.0f  ",theata);

// The answers vary due to round off error
