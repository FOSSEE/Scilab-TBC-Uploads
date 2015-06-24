// Time taken to reach Brillouin zone
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-18 in page 48

clear; clc; close;

// Data given
h=1.05*10^-34; // Constant of calculation in Js
kB=1.112*10^8; // Brillouin zone edge along x-axis
e=1.6*10^-19; // Charge on an electron in C
E_0=10^4; // External electric field in V/m

// Calculation
tou=(h*kB)/(e*E_0);
printf("Time taken to reach Brillouin zone is %0.3e s",tou);

// Result
// Time taken by GaAs electron to reach Brillouin zone is 7.298 ps