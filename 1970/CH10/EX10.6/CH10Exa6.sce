// Scilab code Exa10.6 : : Page-457 (2011)  
clc; clear;
E_d = 0.6;        // Energy of the deutron, MeV 
m_d = 2;            // Mass number of the deutron
m_Li = 19;            // Mass number of the Lithium
E = E_d/(1+m_d/m_Li);        // Energy of the relative motion, MeV
A_Li = 6.017;        // Atomic mass of the Lithium, amu
A_d = 2.015;          //  Atomic mass of the deutron, amu
A_Be = 8.008;         // Atomic mass of the Beryllium, amu
del_E = (A_Li+A_d-A_Be)*931.5;        // Binding energy of the absorbed proton, MeV
E_exc = E+del_E;            // Excitation energy of the compound nucleus, MeV
l_f = 2;            // orbital angular momentum of two alpha particle
P = (-1)^l_f*(+1)^2;        // Parity of the compound nucleus
printf("\nThe excitation energy of the compound nucleus = %6.3f MeV\nThe parity of the compound nucleus = %d", E_exc, P);

// Result
// The excitation energy of the compound nucleus = 22.899 MeV
// The parity of the compound nucleus = 1 
