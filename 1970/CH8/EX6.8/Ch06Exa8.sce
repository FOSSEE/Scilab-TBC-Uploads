// Scilab code Exa6.8: : Page-243 (2011)
clc; clear;
l = 2;    // Orbital angular momentum quantum number
P = (+1)^2*(-1)^l;    // Parity of the 2.9 MeV level in Be-8
M_Li = 7.0182;        // Mass of lithium, MeV
M_Be = 7.998876;        // Mass of beryllium, MeV
m_n = 1;                // Mass of neutron, MeV
E_th = (M_Li+m_n-M_Be)*931.5;    // Threshold energy, MeV
printf("\nThe parity of the 2.9 MeV level in be-8 = +%d \nThe threshold energy for lithium 7 neutron capture = %d MeV",P, E_th);

// Result
// The parity of the 2.9 MeV level in be-8 = +1 
// The threshold energy for lithium 7 neutron capture = 18 MeV 
