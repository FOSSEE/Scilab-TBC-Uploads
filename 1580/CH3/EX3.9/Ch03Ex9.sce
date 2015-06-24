// Scilab Code Ex3.9 : Page-3.14 (2004)
clc;clear;
T1 = 500+273;   // First temperature for metal, K
T2 = 1000+273; // Second temperature for metal, K
frac_vac = 1e-010;  // n1/N, the fraction of vacancy sites at 500 degree celsius
e = 1.6e-019;   // Electronic charge, C
k = 1.38e-023/e;  // Boltzmann constant, eV/K
// n1 = N*exp(-E_f/(k*T1));  // Number of vacancies at 500 K
// n2 = N*exp(-E_f/(k*T2));  // Number of vacancies at 500 K, solving for n2/N = x
x = exp((T1/T2)*log(frac_vac));
printf("\nThe fraction of vacancy sites in metal = %6.4e", x);

// Result 
// The fraction of vacancy sites in metal = 8.4670e-07 
