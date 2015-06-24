// Example10_10_pg413.sce
// Regulation by emf method
// Theory of Alternating Current Machinery by Alexander Langsdorf
// First Edition 1999, Thirty Second reprint
// Tata McGraw Hill Publishing Company
// Example in Page 413


clear; clc; close;

// Given data
va = 2500e+3; //Volt-Ampere rating of the transformer, VA
vll = 6600; // Line to Line voltage in volts
r = 0.073; // Resistance in Ohms
pf1 = 0.8;
phase = 3;
vref = 3640; // Reference for voltage in volts
iref = 340; // Reference for current in Amperes

// Calculations
z_s = vref/iref;
x_s = sqrt(z_s^2 - r^2);
disp('By Referring to Fig. 10-19');
phi = acos(pf1);
V = vll / sqrt(3);
I = round(va / (phase*V)) ;
V_vec = V*(cos(phi) +%i*sin(phi));
E = V_vec + I*(r + %i*x_s);
E_mag = sqrt(real(E)^2 + imag(E)^2);
Regulation = ((E_mag - V)/V)*100;

printf(" Regulation is found to be %.2f %%",Regulation);



// Result
// By Referring to Fig. 10-19   
// Regulation is found to be 45.73 % 
