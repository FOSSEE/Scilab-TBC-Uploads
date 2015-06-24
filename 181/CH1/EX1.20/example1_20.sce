// Electron,hole concentration at minimum conductivity
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-20 in page 49

clear; clc; close;

// Data given
mu_n=1350; // Mobility of electrons in cm^2/Vs
mu_p=450; // Movility of holes in cm^2/Vs
n_i=1.5*10^10; // Intrinsic carrier concentration /cm^3

// Calculation\
//Minimum conductivity of Si when slightly p-type has been proved in text
//Thus the electron and hole concentrations are derived as below
n_0=n_i*sqrt(mu_p/mu_n); 
p_0=n_i*sqrt(mu_n/mu_p); 

printf("(a)Electron concentration is %0.2e cm^-3\n",n_0);
printf("(b)Hole concentration is %0.2e cm^-3",p_0);

// Result 
// (a) Electron concentration is 8.66*10^9 cm^-3
// (b) Hole concentration is 2.6*10^10 cm^-3