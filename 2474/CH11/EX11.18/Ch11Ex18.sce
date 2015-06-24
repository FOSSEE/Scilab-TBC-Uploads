// Scilab code Ex11.18: Pg.525 (2008)
clc; clear;
V = 2.00e-03*%pi/4;    // Volume of the sample, cm^3
M_Zr = 91.22;    // Molecular weight if Zr, g/mol
rho_Zr = 6.506;    // Density of Zr, g/cm^3
N_A = 6.02e+23;    // Avagrado's number
N_Zr = N_A*V*rho_Zr/M_Zr*0.1127;    // No. of atoms of Zr
sigma = 900e-003*1e-024;    // Cross section for the reaction, Sq.cm
I = 6.5e+012;    // Intensity of the thermal neutrons, neutrons/Sq.cm-sec
R = sigma*I;    // Number of reactions per unit time per Zr neucleus
Rate = N_Zr*R;    // Rate at which the reaction proceeds, per sec
printf("\nThe rate at which the reaction proceeds = %4.2e per sec", Rate);

// Result
// The rate at which the reaction proceeds = 4.45e+007 per sec 
// The answer is given wrong in the textbook