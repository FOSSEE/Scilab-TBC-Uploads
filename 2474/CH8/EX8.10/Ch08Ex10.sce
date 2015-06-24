// Scilab code Ex8.10: Pg.351 (2008)
clc; clear;

// Calculation of Debye frequency for Silver
h = 6.63e-34;    // Plank's constant, J-s
k = 1.38e-23;    // Boltzmann constant, J/K
T_D = 215;    // Debye temperature, K
// Since we have T_D = (h*f_D)/k, solving for f_D
f_D = k*T_D/h;    // Debye frequency for Silver, Hz
printf("\nThe debye frequency for silver = %4.2e Hz", f_D);

// Calculation of Debye temperature for Gold
M_Au = 108;    // Atomic mass of Gold, u
M_Ag = 197;    // Atomic mass of Silver, u
T_D_Ag = 215;    // Debye temperature for silver, K
// Since we have f_D_Ag/f_D_Au = sqrt(M_Au/M_Ag) = T_D_Ag/T_D_Au, solving for T_D_Au, we get
T_D_Au = T_D_Ag*sqrt(M_Au/M_Ag);    // Debye temperature for Gold, K
printf("\nThe debye temperature for Gold = %3d K", T_D_Au);

// Result
// The debye frequency for silver = 4.48e+012 Hz
// The debye temperature for Gold = 159 K 