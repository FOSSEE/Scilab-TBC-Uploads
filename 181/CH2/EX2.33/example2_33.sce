// Find breakdown voltage
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-33 in page 111

clear; clc; close;

// Given data
E=1.5*10^5; // Electric field in V/cm
epsln=11.9*8.854*10^-16; // Constant
e=1.6*10^-19; // Charge on an electron in eV
N_d=2*10^15; // Doping concentration /cm^3

// Calculation
W=(E*epsln)/(e*N_d);
V_b=(W*E)/2;

printf("Width of depletion region = %0.3e m\n",W);
printf("Therefore,breakdown voltage Vbr = %0.4f V",V_b);

// Result
// Breakdown voltage = 0.3704 V