// Scilab code Ex17.13 : Pg:895 (2011)
clc;clear;
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
R_max = 0.75;    // Radius of two dees of the cyclotron, m
f = 15e+06;    // Frequency of alternating potential, Hz
m = 1.67e-027;    // Mass of the proton, kg
// As E = 1/2*q^2*R_max^2*B^2/(m*e) and f = q*B/(2*%pi*m), solving for E
E = 2*%pi^2*m*f^2*R_max^2/(e*1e+06);
disp(E)
printf("\nEnergy of the protons issuing out of the cyclotron = %6.4f MeV", E);

// Result
// Energy of the protons issuing out of the cyclotron = 26.0754 MeV  
