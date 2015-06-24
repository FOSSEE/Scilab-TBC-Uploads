// Time taken to reach Brillouin zone
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-11 in page 46

clear; clc; close;

// Data given
h=1.05*10^-34; // Constant of calculation in Js
Kb=1.112*10^8; // Wave vector at Brillouin xone along x-axis /cm
E_0=10^4; // External electric field applied in V/cm
e=1.6*10^-19; // Charge on an electron in C

// Calculation
tou=(h*Kb)/(e*E_0);

printf("Time taken by electron is %0.3e s",tou);

// Result
// Time taken by electron to reach Brillouin zone is 7.297 ps