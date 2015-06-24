// Calculate barrier capacitance of Ge
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-7 in page 87

clear; clc; close;

// Given data
epsln=1.41*10^-12; // Dielectric constant
A=0.0225; // Junction area in cm^2
W=2*10^-4; // Space-charge thickness in cm

// Calculation
C_T=epsln*(A/W);

printf("Barrier capacitance = %0.2e F",C_T);

// Result
// Barrier capacitance = 159.3 pF