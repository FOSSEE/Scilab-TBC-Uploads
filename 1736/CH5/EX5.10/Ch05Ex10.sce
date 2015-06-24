// Scilab Code Ex5.10: Page-181 (2006)
clc; clear;
N_Ef = 1.235;   // Density of states at fermi energy, electrons/atom-eV
N = 6.023e+23;  // Avogadro's number
k = 1.38e-23;   // Boltzmann constant, J/mol/K
e = 1.6e-019;   // Charge on an electron, C
gama = %pi^2*k^2/3*(N_Ef*N/e);   // Electronic specific heat coefficient, J/g-atom-kelvin square

printf("\nThe electronic specific heat coefficient of superconductor = %5.3f mJ/g-atom-kelvin square", gama/1e-03);

// Result
// The electronic specific heat coefficient of superconductor = 2.913 mJ/g-atom-kelvin square 
