// Example3_16_pg161.sce
// To find radial force due to current
// Theory of Alternating Current Machinery by Alexander Langsdorf
// First Edition 1999, Thirty Second reprint
// Tata McGraw Hill Publishing Company
// Example in Page 161


clear; clc; close;

// Given data
va = 200e+3;  // Volt Amperes of transformer, VA
v1 = 11000; // Voltage in volts
v2 = 2300; // Voltage in volts
T = 46.3; // Mean length of the turn, inches
n = 455; // Number of turns
I = 1320; // Current in Amperes
l = 35; // length in inches
k = 1.8;
zeq_ht = 8.33;

// Calculations

F_av = (0.45/1e+7)*((T*n^2*I^2)/(k*l));
printf("\n The radial force due to the current of %d Amps for given data is %d lb\n", I, round(F_av));

// Result
//  The radial force due to the current of 1320 Amps for given data is 11930 lb
