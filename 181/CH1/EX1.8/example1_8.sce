// Find position of Fermi level
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-8 in page 33

clear; clc; close;

// Data given
n_0=6*10^17; // Electron concentration in the conduction band /cm^3
k_bT=0.026; // Expressed in eV at room temperature
N_c=4.45*10^17; // Constant of Calculation /cm^3

// Calculation
E_f=k_bT*log(n_0/N_c);
A=E_f*10^3;

printf("Position of Fermi level is %0.2f meV",A);

// Result
// Position of Fermi level is 7.77 meV
// Intrinsic carrier density is lesser than dopant density
// Hence semiconductor is non-degenerate