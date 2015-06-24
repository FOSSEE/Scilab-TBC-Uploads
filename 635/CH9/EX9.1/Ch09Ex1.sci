// Scilab Code Ex9.1 Exception of Dulong-Petit law at room temperature: Page-303(2010)
h = 6.626e-034;    // Planck's constant, joule second
k = 1.38e-023;    // Boltzmann constant, joule/mol/kelvin
T = 300;    // Room temperature, kelvin
f_Ag = 4.0e+012;    // Vibrational frequency for silver, cycles/second
f_Dia = 2.4e+013;    // Vibrational frequency for diamond, cycles/second
E_Ag = h*f_Ag;    // Vibrational Energy for silver, joule
E_Dia = h*f_Dia;    // Vibrational Energy for diamond, joule
E_th = k*T;    // Thermal energy at room temperature, joule
if E_th > E_Ag & E_th < E_Dia then 
    printf("\nSince E_Ag < kT and E_Dia > kT, therefore,"); 
    printf("\nSilver metal obeys the Dulong Petit law at room temperature while diamond does not.");
end
// Result 
//Since E_Ag < kT and E_Dia > kT, therefore,
// Silver metal obeys the Dulong Petit law at room temperature while diamond does not. 