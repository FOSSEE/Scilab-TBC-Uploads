// Example 2.12
clear all;
clc;

// Given data
rho = 0.97;                                 // Density of Sodium in gram/cm^3
// From standard data table
NA = 0.6022*10^24;                          // Avagodro number
M = 22.99;                                  // Atomic weight of Sodium
// Calculation
N = rho*NA/M;
// Result
printf("Atom density of sodium = %5.5E atoms/cm^3 \n",N);
