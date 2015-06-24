// Find pinch off,saturation voltage
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 6-10 in page 279

clear; clc; close;

// Given data
Nd=3*10^21; // Donor concentration in /m^3
epsln=12; // Dielectric constant of silicon
epsln_0=12*8.85*10^-12; // Constant of calculation
e=1.6*10^-19; // Charge on an electron in C
a=2*10^-6; // Constant of calculation

// Calculation
Vp=(e*Nd*(a)^2)/(2*epsln_0);
printf("(a)Pinch off voltage = %0.3f V\n",Vp);
Vds=Vp-2;
printf("(b)Saturation voltage = %0.3f V",Vds);

// Result
// (a) Pinch off voltage = 9.040 V
// (b) Saturation voltage = 7.040 V