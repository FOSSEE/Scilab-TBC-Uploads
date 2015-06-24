// Scilab Code Ex3.8 : Page-3.13 (2004)
clc;clear;
N = 1;  // For simplicity assume total number of metal ions to be unity
e = 1.6e-019;   // Electronic charge, C
k = 1.38e-023/e;  // Boltzmann constant, eV/K
T1 = 500;   // First temperature for metal, K
T2 = 1000; // Second temperature for metal, K
E_v = 1;   // Average energy required to create a vacancy in metal, eV 
n_500 = N*exp(-E_v/(k*T1));  // Number of vacancies at 500 K
n_1000 = N*exp(-E_v/(k*T2));  // Number of vacancies at 500 K
n_ratio = n_1000/n_500;     // Ratio of vacancies in metal 
printf("\nThe ratio of vacancies in metal = %5.3e", n_ratio);

// Result 
// The ratio of vacancies in metal = 1.085e+05 
