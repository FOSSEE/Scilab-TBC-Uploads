// Evaluate Vds and Rd
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-55 in page 358

clear; clc; close;

// Given data
b=10^-4; // Constant in A/V^2
Vdd=10; // Drain voltage in V
Vt=1; // Voltage expressed in volts
Ids=0.5*10^-3; // Drain-source current in mA

// Calculation
Vds=1+sqrt(5);
Rd=(Vdd-Vds)/Ids;
printf("Vds = Vgs = %0.2f V\nRd = %0.2e ohm",Vds,Rd);

// Result
// Vds = 3.24 V
// Rd = 13.5 K-ohm