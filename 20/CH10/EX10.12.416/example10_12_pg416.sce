// Example10_12_pg416.sce
// Regulation by mmf method
// Theory of Alternating Current Machinery by Alexander Langsdorf
// First Edition 1999, Thirty Second reprint
// Tata McGraw Hill Publishing Company
// Example in Page 416

clear; clc; close;

// Given data
va = 2500e+3; // Volt Ampere rating of the transformer, VA
vll = 6600; // Line to Line voltage, Volts
r = 0.073; // Resistance in Ohms
x = 0.87; // Reactance in Ohms
pf1 = 0.8;
phase = 3;

// Calculations 

phi = acos(pf1);
V = vll / sqrt(3);
I = round(va / (phase*V)) ;
IR_a = I*r;
IX_a = I*x;
V_vec = V*(cos(phi) +%i*sin(phi));
E = V_vec + IR_a;
E_mag = sqrt(real(E)^2 + imag(E)^2);
F_r1_mag = 16500;
cos_alpha = (real(E)/E_mag);
sin_alpha = (imag(E)/E_mag);
alpha = acos(cos_alpha);
F_r1 = F_r1_mag*(cos(%pi/2 + alpha) + %i*sin(%pi/2 + alpha));
A_plus_Ax = 10000;
F = F_r1 - (A_plus_Ax);
F_mag = sqrt(real(F)^2 + imag(F)^2);
printf("\n Magnitude of F is %0.2f amp-turns per pole", F_mag);
disp('This magnitude of F corresponds to Open-circuit voltage of 4330 Volts');
oc_volt = 4330;
regulation = ((oc_volt - V)/V)*100;
printf("\nRegulation is found to be %0.1f %% \n", regulation);

// Result
//  Magnitude of F is 23866.02 amp-turns per pole 
// This magnitude of F corresponds to Open-circuit voltage of 4330 Volts   
//
// Regulation is found to be 13.6 % 
