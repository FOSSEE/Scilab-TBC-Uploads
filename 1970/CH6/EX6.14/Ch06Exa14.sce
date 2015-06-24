// Scilab code Exa6.14: : Page-246 (2011)
clc; clear;
t_half = 12.5*365*24;        // Half life of hydrogen 3, hour
lambda = log(2)/t_half;      // Decay constant, per hour
N_0 = 6.023e+26;             // Avogadro's number, per mole
m = 0.1e-03;                // Mass of tritium, Kg
dN_by_dt = lambda*m*N_0/3;  // Decay rate, per hour
H = 21*4.18;                // Heat produed, joule 
E = H/dN_by_dt;             // The average energy of the beta particle, joule
printf("\nThe average energy of beta particles = %4.2e joule = %3.1f keV", E, E/1.6e-016);

// Result
// The average energy of beta particles = 6.91e-016 joule = 4.3 keV 
 