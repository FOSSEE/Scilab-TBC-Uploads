// Scilab code Ex11.20: Pg.530 (2008)
clc; clear;
m_U_235 = 235;    // Mass of Uranium, g
N_A = 6.02e+23;    // Avagradro's number,
N = N_A/m_U_235    // Number of U_235 in 1 g, nuclei/g
E = 200e+06;    // Energy released per fission, eV
e = 1.6e-19;    // Used as conversion factor and equal to 1 J
E_t = E*N*e/(3600*1000);    // Energy released per gram, W-h/g
printf("\nThe energy released per gram = %4.2e kW-h/g", E_t);

// Result
// The energy released per gram = 2.28e+004 kW-h/g 