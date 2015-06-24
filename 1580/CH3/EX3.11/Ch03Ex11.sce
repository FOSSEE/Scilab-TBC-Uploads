// Scilab Code Ex3.11 : Ratio of vacancies in metal to create Frenkel defect:Page-3.18 (2004)
N = 1;  // For simplicity assume total number of metal ions to be unity
Ni = 1; // For simplicity assume total number of metal ions to be unity
k = 8.625e-5;  // Boltzmann constant, J/K
T1 = 273+20;   // First temperature for metal, K
T2 = 300+273; // Second temperature for metal, K
E_v = 1.4;   // Average energy required to create a vacancy in metal, eV 
n_293 = N*exp(-E_v/(2*k*T1));  // Number of vacancies at 500 K
n_573 = N*exp(-E_v/(2*k*T2));  // Number of vacancies at 500 K
n_ratio1 = n_573/n_293;     // Ratio of vacancies in metal 
n_ratio2 = n_293/n_573;     // Ratio of vacancies in metal 

printf("\nThe ratio 1 of vacancies in metal to create Frenkel defect = %5.3e", n_ratio1);
printf("\nThe ratio 2 of vacancies in metal to create Frenkel defect = %5.3e", n_ratio2);

// Result 
//  The ratio 1 of vacancies in metal to create Frenkel defect = 7.558e+05
// The ratio 2 of vacancies in metal to create Frenkel defect = 1.323e-06 
