// Scilab code Exa2.13 :  : Page 93 (2011)
clc; clear;
M_A = 4;    // Mass of alpha particle, amu
M_U = 235;    //Mass of U-235, amu
M_P = 239;    // Mass of P-239, amu
Amount = 120.1;    // quantity of P-239, g
E_A = 5.144;    // Energy of emitting alpha particles, Mev
E_R = (2*M_A)/(2*M_U)*E_A;    // The recoil energy of U-235, Mev
E = E_R + E_A;    // The energy released per disintegration, Mev
P = 0.231;    // Evaporation rate, watt
D = P/(E*1.60218e-013);    // Disintegration rate, per sec
A = 6.022137e+023;    // Avagadro's number, atoms
N = Amount/M_P*A;    // Number of nuclei in 120.1g of P-239
T = 0.693/(D*3.15e+07)*N;    // Half life of Pu_239, years
printf("\nThe half life of Pu-239 = %3.2e years", T);

// Result 
// The half life of Pu-239 = 2.42e+004 years 