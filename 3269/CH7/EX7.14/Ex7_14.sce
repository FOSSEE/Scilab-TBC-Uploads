// Example 7.14
clear all;
clc;

// Assuming that the fission product poisoning results in 12 barns per original Uranium-235 atom in a time frame of one year
sigma_p = 12;                             // Microscopic poison cross section in barns
v = 2.42;                                 // Average number of neutrons produced in fission
// Using Table II.2 for fission cross section of Uranium-235 at thermal energy
sigma_f = 587;                           // Microscopic fission cross section in barns
// Calculation
rho = -sigma_p/(v*sigma_f);
// Result
printf(" \n The reactivity due to poisons = %.5f or %.3f percent \n",rho,rho*100);
