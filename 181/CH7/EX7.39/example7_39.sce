// Find the value of Rs
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-39 in page 341

clear; clc; close;

// Given data
Id=2.5*10^-3; // Drain current in mA
Vds=8; // Drain-source voltage in V
Vdd=30; // Drain voltage in V
R1=1*10^6; // R1 value in M-ohms
R2=500*10^3; // R2 value in K-ohms
Idss=15*10^-3; // Drain-source current in mA
Vp=-5; // Pinch off voltage in volts

// Calculation
Vgs=5*(sqrt(5/30)-1);
V2=(Vdd*R2)/(R1+R2);
Rs=(V2-Vgs)/Id;
printf("Rs = %0.2e ohms\n",Rs);
Rd=(Vdd-Vds-(Id*Rs))/Id;
printf("Rd = %0.2e ohms",Rd);

// Result
// Rs = 5.18 K-ohms
// Rd = 3.62 K-ohms