// Ex12_5 Page:247 (2014)
clc; clear;
e = 1.6e-019;   // Charge on an electron, C
m = 9.1e-031;   // Mass of an electron, kg
K = 327;    // Thermal conductivity of Zn, W/m/K
N_A = 6.023e+026;    // Avogadro's number/k-mol
T = 300;    // Room temperature, K
tau = 2.5e-014; // Relaxation time of electrons in divalent Zn, s
d = 7.13e+03;   // Density of Zn, kg/metre-cube
A = 65.38;  // Atomic weight of Zn, g/mol
N = 2*d*N_A/A;  // Number of electrons per unit volume, per metre-cube
sigma = N*e^2*tau/m;    // Electrical conductivity of Zn,  mho/m
L = K/(sigma*T);    // Lorentz number for Zn, W-ohm/Sq.K
printf("\nLorentz number for Zn = %5.3e W-ohm/Sq.K", L);

// Result
// Lorentz number for Zn = 1.180e-08 W-ohm/Sq.K 
