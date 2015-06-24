// Full scale reading of dc metere
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 3-10 in page 158

clear; clc; close;

// Given data
R=5020; // Total resistance in ohm
Vrms=5.58; // Input rms voltage in V
// Calculation
I_dc=(2*sqrt(2)*Vrms)/(%pi*5020);
V_0=R*I_dc;
printf("Full scale reading = %0.2f V",V_0);

// Result
// Full scale reading = 5.58 V