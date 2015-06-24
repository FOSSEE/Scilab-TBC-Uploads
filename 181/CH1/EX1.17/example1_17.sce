// Equilibrium hole concentration in Si
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-17 in page 48

clear; clc; close;

// Data given
n_0=10^17; // Free electron concentration /cm^3
n_i=1.5*10^10; // Constant of calculation
// Calculation
p_0= n_i^2/n_0;

printf("Equilibrium hole concentration is %0.2e cm^-3",p_0);

// Result
// Equilibrium hole concentration in Si sample is 2.25*10^3 cm^-3