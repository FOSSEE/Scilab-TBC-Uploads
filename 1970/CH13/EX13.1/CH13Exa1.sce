// Scilab code Exa13.1 : : Page-600 (2011)
clc; clear;
E = 200*1.6023e-13;     // Energy released per fission, joule
E_t = 2;                // Total power produced, watt
R_fiss = E_t/E;        // Fission rate, fissions per sec
m = 0.5;                // Mass of uranium, Kg
M = 235;                // Mass number of uranium
N_0 = 6.023e+26;        // Avogadro's number, per mole
N = m/M*N_0            // Number of uranium nuclei
E_rel = N*E/4.08*10^-3;        // Energy released, kilocalories
printf("\nThe rate of fission of U-235 = %4.2e fissions per sec \nEnergy released = %e kcal", R_fiss, E_rel);

// Result
// The rate of fission of U-235 = 6.24e+010 fissions per sec 
// Energy released = 1.006535e+010 kcal 