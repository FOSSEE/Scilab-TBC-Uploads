// Calculate drift velocity in copper conductor
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-14 in page 47

clear; clc; close;

// Data given
A=10^-5; // Cross sectional area in m^2
I=100; // Current flowing in  A
n_0=8.5*10^28; // Free electron concentration of copper per cubic meter
e=1.6*10^-19; // Charge on an electron in C

// Calculation
V_d=I/(n_0*A*e);

printf("The drift velocity in copper is %0.3e m/s",V_d);

// Result
// Drift velocity in copper is 7.353*10^-4 m/s