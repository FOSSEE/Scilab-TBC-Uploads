// Find reverse saturation current
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-12 in page 94

clear; clc; close;

// Given data
A=5*10^-2; // Cross sectional area in m^2
b=2.6; // Constant of calculation
Lsigma=10^-4; // Constant of calculation
sigmai=4.32*10^-6; // Intrinsic conductivity in ohm/cm
Vt=0.026; // Constant in eV

// Calculation
I_0=A*Vt*(b/(1+b)^2)*sigmai^2*(2*10^4);

printf("The reverse saturation current = %0.2e A",I_0);

// Result
// The reverse saturation current = 97.25 pA