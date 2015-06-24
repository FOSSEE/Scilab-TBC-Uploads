// Dynamic resistance at forward bias
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-27 in page 103

clear; clc; close;

// Given data
k_BT=25.86*10^-3; // Constant
I_0=1.5*10^-6; // Current in microA
V=0.15; // Forward bias voltage in volts
V_T=0.02586; // Thermal voltage in volts

// Calculation
R_ac=k_BT/(I_0*exp(V/V_T));

printf("Dynamic resistance = %0.2f W",R_ac);

// Result
// Dynamic resistance at forward bias = 52.17 W