// Scilab code Ex13.4: Pg 482 (2005)
clc; clear;
T = 5730;   // Half life of the carbon-14 isotope, years
N0 = 1000;  // Initial number of carbon-14 isotope
t = 22920;  // Time of decay, years
n = t/T;    // Total number of half lives
N = (1/2)^n*N0; // Sample remains after 22920 years
printf("\nNumber of C-14 isotopes remained after %d years = %d", t, N);

// Result
// Number of C-14 isotopes remained after 22920 years = 62 
