// Scilab code Exa2.6 : : Page 90 (2011)
clc; clear;
A = 6.022137e+023; //Avagadro's number, atoms
N_0 = A/232; // Initial number of atoms
t = 3.150e+07; // Decay time, sec
lambda = 1.58e-018; // Disintegration constant,sec^-1
N = lambda*t*N_0; // Number of alpha decays in Th-232
printf("\nThe number of alpha decays in Th-232 = %5.2e ", N);

// Result
// The number of alpha decays in Th-232 = 1.29e+011