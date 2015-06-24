// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 3 : TRANSFORMER AND PER UNIT SYSTEM
// Example : 3.14

clc;clear; // clears the console and command history 

// Given data
E_1 = 500   // secondary induced voltages in V
E_2 = 450   // secondary induced voltages in V
kVA_1 = 100 // kVA ratings of transformer
kVA_2 = 200 // kVA ratings of transformer
Z_1 = 0.05  // impedance of transformer
Z_2 = 0.08  // impedance of transformer

// caclulations 
Z1 =Z_1*E_1/(kVA_1*10^3/E_1)  // actual impedance of 1st transformer in ohm
Z2 = Z_2*E_2/(kVA_1*10^3/E_2) // actual impedance of 2nd transformer in ohm
Z = %i*(Z1+Z2)
I_c = (E_1-E_2)/(Z)          // value of the circulating current

// display the result 
disp("Example 3.14 solution");
printf(" \n Value of the circulating current \n I_c = %.3f<%.f A \n", abs(I_c),atand(imag(I_c),real(I_c)));

