// Scilab code Ex6.2: Pg.235-236 (2008)
clc; clear;

// Part (a)
h_cross = 1.055e-034;    // Reduced Plank's constant, J-s
m = 9.11e-031;    // Mass of electron, kg
L = 1e-02;    // Length of wire, m
E_1 = ((%pi^2)*(h_cross^2))/(2*m*L^2);    // Ground state energy for an electron, J
printf("\nThe ground state energy for an electron = %4.2e J or %4.2e eV", E_1, E_1/1.6e-19);

// Part (b)
E_n = 0.03;    // Electron's  n_th state energy, eV
n = sqrt(E_n*1.6e-19/E_1);    // Electron's quantum number
printf("\nThe quantum number of electron = %4.2e",n);

// Result
// The ground state energy for an electron = 6.03e-034 J or 3.77e-015 eV
// The quantum number of electron = 2.82e+006 