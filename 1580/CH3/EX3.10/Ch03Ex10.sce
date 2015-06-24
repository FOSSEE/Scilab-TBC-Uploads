// Scilab Code Ex3.10 :Page-3.16 (2004)
T = 273+25; // Temperature , K
r = 2.82e-10;   // Interionic distance, m
N = 4/((2*r)^3);    // Density of ion pairs, ion pairs
k = 8.625e-5;  // Boltzmann constant, J/K
n = 5e+11;  // Density od Schottky effects, per unit volume
E_s = 2*k*T*2.303*log10(N/n);   // Average energy required to creat Schottky defect
printf("\nAverage energy required to create Schottky defect = %5.3f eV", E_s);

// Result 
// Average energy required to create Schottky defect = 1.971 eV 
