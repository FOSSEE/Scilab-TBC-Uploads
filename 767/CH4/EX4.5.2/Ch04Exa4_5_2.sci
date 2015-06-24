// Scilab code Exa4.5.2: To calculate Q-value for the reaction : Page 183 (2011)
M_Cf = 252.081621; // Mass of califronium, amu
M_Cm = 248.072343; // Mass of curium, amu
M_He = 4.002603; // Mass of alpha particle, amu
Q = [M_Cf-M_Cm-M_He]*931.49; // Q-value, MeV
printf("\nThe Q-value for the reaction : %4.2f MeV", Q)
// Result  
// The Q-value for the reaction : 6.22 MeV