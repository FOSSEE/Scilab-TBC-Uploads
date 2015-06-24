// Mobility of free electrons in Alluminium
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-22 in page 50

clear; clc; close;

// Data given
n_0=18*10^28; // Derived from the given formula in textbook
rho=3.44*10^-6; // Resistivity in ohm-cm
e=1.6*10^-19; // Charge on an electron in C

// Calculation
mu=10^2/(n_0*e*rho);

printf("Mobility of free electrons is %0.0e m^2/V-s",mu);

// Result
// Mobility of free electrons in Alluminium is 10^-3 m^2/V-s