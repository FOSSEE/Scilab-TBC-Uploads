// Scilab code Exa2.20 : : Page 96 (2011)
clc; clear;
N_1 = 10^20; // Number of nuclei of parent isotopes
T_P = 10^4; // Half life of parent nucleus,years
T_D = 20; // Half life of daughter nucleus,years
T = 10^4; // Given time,years
L_P = 0.693/T_P ; // Decay constant of parent nucleus,years^-1
L_D = 0.693/T_D ; // Decay constant of daughter nucleus,years^-1
t_0 = log(0.03)/(L_P-L_D); // Required time for decay of daughter nucleus,years
N = L_P/L_D*(%e^(-L_P*T)-%e^(-L_D*T))*N_1; // Number of nuclei of daughter isotope
printf("\nThe required time for decay of daughter nucleus = %d yr \nThe number of nuclei of daughter isotope = %1.0e ", t_0, N);

// Result
// The required time for decay of daughter nucleus = 101 yr 
// The number of nuclei of daughter isotope = 1e+017  