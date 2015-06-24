// Scilab code Ex10.8: Pg.448 (2008)
clc; clear;
K = 9e+09;    // Coulomb's constant, N-m^2/C^2
h_cross = 1.055e-34;    // Reduced Plank's constant, J-s
e = 1.6e-19;    // Electronic charge, C
k = 15.9;    // Dielectric constant of Ge
m_e = 9.11e-31;    // Mass of electrons, kg
m = 0.1*m_e;    // Effective mass of electrons in Ge, kg
// Magnitude of ionization energy corresponding to n = 1 is
E_1 = 0.5*(K*e^2/h_cross)^2*m/k^2;    // Ionization energy, J
a_o = 0.0529;    // Bohr's radius, nm
r_1 = a_o*(m_e/m)*k;    // Radius of electron's orbit, nm
printf("\nThe ionization energy in Ge = %3.1e J or %3.1e eV", E_1, E_1/e);
printf("\nThe radius of electron orbit = %3.1f nm", r_1);

// Result
// The ionization energy in Ge = 8.6e-022 J or 5.4e-003 eV
// The radius of electron orbit = 8.4 nm 