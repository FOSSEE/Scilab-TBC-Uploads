// Calculate Rd,gm,mu
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-22 in page 329

clear; clc; close;

// Given data
Vds1=6; // Drain-source voltage when Vgs is zero
Vds2=16; // Drain-source voltage when Vgs is 0.3
Id1=12*10^-3; // Drain current in mA when Vgs is zero
Id2=12.3*10^-3; // Drain current in mA when Vgs is zero

// Calculation
rd=(Vds2-Vds1)/(Id2-Id1);
gm=(Id2-Id1)/(0-0.3*10^-3);
mu=-gm*rd*10^-4;
printf("(a)Drain resistance Rd = %0.2e ohms\n",rd);
printf("(b)Transconductance gm = %0.0f(neglecting the sign)\n",-gm);
printf("(c)Amplification factor mu = %0.2f",mu);

// Result
// (a) Rd = 33.33k-ohms
// (b) gm = 1
// (c) mu = 3.33