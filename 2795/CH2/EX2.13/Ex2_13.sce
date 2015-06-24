// Scilab Code Ex2.13: Page-69 (2013)
clc; clear;
c = 1;    // For simplicity assume peed of light to be unity, m/s
K = 2.00;    // Kinetic energy of protons, GeV
E0 = 0.938;    // Rest mass of a proton, GeV
E = K + E0;    // Total energy of the proton, GeV
// From relativistic mass energy relation, E^2 = (p*c)^2+E0^2, solving for p
p = sqrt(E^2 - E0^2)/c;    // Momentum of the protons, GeV/c
// As E = gama*E0, solving for gama
gama = E/E0;    // Relativistic factor
bita = sqrt((gama^2-1)/gama^2);    // Boost parameter
v = bita*3.00e+08;    // Speed of 2 GeV proton, m/s
printf("\nThe energy of each initial proton = %5.3f GeV", E);
printf("\nThe momentum of each initial proton = %4.2f GeV/c", p);
printf("\nThe speed of each initial proton = %3.1e m/s", v);
printf("\nThe relativistic factor, gama = %4.2f", gama);
printf("\nThe boost parameter, beta = %5.3f", bita);

// Result 
// The energy of each initial proton = 2.938 GeV
// The momentum of each initial proton = 2.78 GeV/c
// The speed of each initial proton = 2.8e+008 m/s
// The relativistic factor, gama = 3.13
// The boost parameter, beta = 0.948  