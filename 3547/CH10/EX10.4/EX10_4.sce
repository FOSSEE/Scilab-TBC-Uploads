// Example 10.4
// Calculation of the peak power required to form a soliton
// Page no 444

clc;
clear;
close;

// Given data

c=3*10^8;                // Velocity of light
S=0.06*10^3;            // Dispersion slope
D=17*10^-6;             // Dispersion coefficient
lambda=1550*10^-9;     // Signal Wavelength
lc=1550*10^-9;         // Signal Wavelength
lp=1549.6*10^-9;       // Pump wavelength
l=50*10^3;             // Length
r=2*%pi*10^10;
alpha=0.046*10^-3;      // Loss coefficient

// The peak power required to form a soliton
b3=S*(lambda^2/(2*%pi*c))+D*(lambda^3/(2*%pi^2*c^2));
b2=-(D*lambda^2)/(2*%pi*c);
o=2*%pi*(c/lp-c/lc);
d=(b2*o)+(b3*o^2)/2;
n=alpha^2/alpha^2*r*4*d^2*(1+(4*(sin(r*d*l))^2*%e^(-alpha*l))/(1-%e^(-alpha*l)^2));
n=n*10^-18;
// Displaying results in the command window            
printf("\n XPM efficiency = %0.3f *10^-3",n);


// The answers vary due to round off error
