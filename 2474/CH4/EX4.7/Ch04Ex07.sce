// Scilab code Ex4.7: Pg.165-166 (2008)
clc; clear;
R_i = 1.0973732e+07;    // Rydberg constant, per m
m = 9.1094e-031;    // Mass of electron, kg
M_H = 1.6726e-027;    // Mass of Hydrogen, kg
M_He = 5.0078e-027;    // Mass of Helium, kg

// For Hydrogen 
R_H = R_i*1/(1+m/M_H);    // Rydberg constant for Hydrogen
printf("\nRydberg Constant for Hydrogen = %7.5e per m", R_H);

// For Helium
R_He = R_i*(1/(1+(m/M_He)));    // Rydberg constant for Helium
printf("\nRydberg Constant for He+ = %7.5e per m", R_He);

// Result
// Rydberg Constant for Hydrogen = 1.096776e+007 per m
// Rydberg Constant for He+ = 1.097174e+007 per m