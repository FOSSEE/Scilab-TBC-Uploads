// Scilab Code Ex13.5 Shift in position of fermi level with change in concentration of impurities:  Page-436 (2010)
k_T = 0.03;    // Thermal energy, eV
dE_Fv = 0.4;    // Energy difference between fermi level and topmost valence level, eV
// The hole concentration in P-type material is
// p = N_A = N_v*exp(-EF-Ev)/(k_T) = N_v*exp(-dE_Fv)/(k_T)
// The new value of hole concentration in P-type material is
// p_prime = 3*N_A = N_v*exp(-EF_prime-Ev)/(k_T)= = N_v*exp(-dE_F_primev)/(k_T)
// Solving for dE_F_primev by removing exponetial term
dE_F_primev = dE_Fv - k_T*log(3);    // Energy difference between new fermi level and topmost valence level, eV
printf("\nThe energy difference between new fermi level and topmost valence level = %5.3f eV", dE_F_primev); 
// Result 
// The energy difference between new fermi level and topmost valence level = 0.367 eV 