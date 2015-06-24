// Scilab Code Ex9.3: Page-310 (2014)
clc; clear;
k = 1.38e-023;    // Boltzmann constant, J/K
u = 1.67e-027;    // Mass equivalent of one atomic mass unit, kg
T = 293;    // Room temperature, K
m_H = 1.008*u;    // Gram atomic mass of hydrogen, kg
m = 2*m_H;    // Gram molecular mass of hydrogen molecule, kg
v_bar = 4/sqrt(2*%pi)*sqrt(k*T/m);    // Mean molecular speed in the light gas hydrogen, m/s
printf("\nThe mean molecular speed in the light gas hydrogen = %4d m/s", ceil(v_bar));
m = 222*u;    // Gram atomic mass of Radon, kg
v_bar = 4/sqrt(2*%pi)*sqrt(k*T/m);    // Mean molecular speed in the heavy radon gas, m/s
printf("\nThe mean molecular speed in the heavy radon gas = %3d m/s", ceil(v_bar));

// Result
// The mean molecular speed in the light gas hydrogen = 1749 m/s
// The mean molecular speed in the heavy radon gas = 167 m/s 