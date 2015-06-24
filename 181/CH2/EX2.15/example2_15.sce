// Find voltage to be applied
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-15 in page 96

clear; clc; close;

// Given data
J_0=500*10^-3; // Saturation current density in mA/m^2
J=10^5; // Forward current density in A/m^2
e=1.6*10^-19; // Charge on an electron in C
etaK=1.38*10^-23; // Constant of calculation
T=350; // Temperature in K

// Calculation
A=2.303*log10(2*10^5);
V=(A*etaK*T)/e;

printf("Voltage to be applied = %0.4f V",V);

// Result
// The voltage to be applied = 0.3685 V