// Scilab code Ex11.14: Pg.507 (2008)
clc; clear;
e = 1.6e-19;    // Charge on proton, C
m_p = 1.67e-27;    // Mass of proton, kg
k = 8.999e+09;    // Coulomb's constant, N-m^2/C^2
// For simplicity let r = 1
r = 1;    // Distance between protons, , fm
F_Coul = k*(e^2/r^2);
G = 6.67e-11;    // Gravitational constant, N-m^2/kg^2
F_grav = G*(m_p^2/r^2);
r = F_grav/F_Coul;    // Ratio of Gravitational force to Coulomb's force
printf("\nThe ratio of Gravitational force to Coulomb force between protons = %3.1e", r);

// Result
// The ratio of Gravitational force to Coulomb force between protons = 8.1e-037 