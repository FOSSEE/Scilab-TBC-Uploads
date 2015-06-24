// Scilab Code Ex13.8: Page-500(2014)
clc; clear;
u = 931.5;    // Energy equivalent of 1 amu, MeV
M_He = 4.002603;    // Mass of He nucleus, u
M_C = 12.0 // Mass of carbon nucleus, u
M_O = 15.994915;    // Mass of oxygen nucleus, u
Q = (M_He + M_C - M_O)*u;    // Q-value of the reaction, MeV
printf("\nThe energy expended in the fusion reaction inside supergiant star = %3.1f MeV", Q);

// Result
//The energy expended in the fusion reaction inside supergiant star = 7.2 MeV 