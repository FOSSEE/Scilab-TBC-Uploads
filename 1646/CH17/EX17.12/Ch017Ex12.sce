// Scilab code Ex17.12 : Pg:894 (2011)
clc;clear;
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
R_max = 0.6;    // Radius of two dees of the cyclotron, m
B = 1.6;    // Strength of pole pieces of the cyclotron, tesla
// For proton
m = 1.67e-027;    // Mass of the proton, kg
q = 1.6e-019;    // Charge on a proton, C
E = 1/2*q^2*R_max^2*B^2/(m*e*1e+06);    // Energy of the proton, MeV
f_proton = q*B/(2*%pi*m*1e+06);    // Cyclotron oscillator frequency for the proton, MHz
printf("\nEnergy of the proton = %5.2f MeV", E);
printf("\nCyclotron frequency for proton = %5.2f MHz", f_proton);
// For deuteron
m = 2*1.67e-027;    // Mass of the deuteron, kg
q = 1.6e-019;    // Charge on a deuteron, C
E = 1/2*q^2*R_max^2*B^2/(m*e*1e+06);    // Energy of the deuteron, MeV
f_deuteron = q*B/(2*%pi*m*1e+06);    // Cyclotron oscillator frequency for the deuteron, MHz
printf("\nEnergy of the deuteron = %5.2f MeV", E);
printf("\nCyclotron frequency for deuteron = %5.2f MHz", f_deuteron);
// For alpha-particle
m = 4*1.67e-027;    // Mass of the alpha-particle, kg
q = 2*1.6e-019;    // Charge on a alpha-particle, C
E = 1/2*q^2*R_max^2*B^2/(m*e*1e+06);    // Energy of the deuteron, MeV
f_alpha = q*B/(2*%pi*m*1e+06);    // Cyclotron oscillator frequency for the alpha-particle, MHz
printf("\nEnergy of the alpha-particle = %5.2f MeV", E);
printf("\nCyclotron frequency for alpha-particle = %5.2f MHz", f_alpha);

// Result
// Energy of the proton = 44.15 MeV
// Cyclotron frequency for proton = 24.40 MHz
// Energy of the deuteron = 22.07 MeV
// Cyclotron frequency for deuteron = 12.20 MHz
// Energy of the alpha-particle = 44.15 MeV
// Cyclotron frequency for alpha-particle = 12.20 MHz 
