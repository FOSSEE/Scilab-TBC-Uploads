clear;
clc;

// Illustration 9.9
// Page: 536

printf('Illustration 9.9 -  Page: 536\n\n');

// solution
F = 7; // [water flow rate, L/s]
Z = 3; // [m]
d = 2.6; // [m]
A = %pi*d^2/4; // [cross sectional area, square m]
vo = 0.013; // [superficial velocity, m/s]

cf = 7*10^-3; // [Ca2+ ion concentration, eq/L]
qstar_F = 2.9; // [cation capacity, eq/kg]
rowp = 1.34; // [kg/L]
e = 0.38; // [porosity]
// From equation 9.66
t_star = Z*qstar_F*rowp*(1-e)/(vo*cf*3600); // [hour]

printf("The ideal breakthrough time for the ion exchanger is %f hour.\n\n",t_star);