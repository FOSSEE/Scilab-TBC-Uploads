// Find the value of R1
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-14 in page 322

clear; clc; close;

// Given data
Idss=2*10^-3; // Drain-source current in mA
Vp=-1; // Voltage in volts
Rd=56*10^3; // Drain resistance in K-ohms
Vdn=10; // Drain to ground voltage in volts
Vdd=24; // Drain voltage in volts

// Calculation
Id=(Vdd-Vdn)/Rd;
Vgs=-0.65;
R1=-Vgs/Id;
printf("R1 = %0.1e ohms",R1);

// Result
// R1 = 2.6 K-ohms