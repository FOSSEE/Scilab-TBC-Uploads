// Scilab code Exa11.5 : : Page-456 (2011)  
clc; clear;
E_0 = 4.99;        // Energy of the proton, MeV 
m_p = 1;            // Mass number of the proton
m_F = 19;            // Mass number of the flourine
E = E_0/(1+m_p/m_F);        // Energy of the relative motion, MeV
A_F = 18.998405;        // Atomic mass of the fluorine, amu
A_H = 1.007276;          //  Atomic mass of the proton, amu
A_Ne = 19.992440;         // Atomic mass of the neon, amu
del_E = (A_F+A_H-A_Ne)*931.5;        // Binding energy of the absorbed proton, MeV
E_exc = E+del_E;            // Excitation energy of the compound nucleus, MeV
printf("\nThe excitation energy of the compound nucleus = %6.3f MeV", E_exc);

// Result
// The excitation energy of the compound nucleus = 17.074 MeV 