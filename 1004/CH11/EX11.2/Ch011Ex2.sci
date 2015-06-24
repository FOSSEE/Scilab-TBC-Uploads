// Scilab code: Ex11.2: Threshold energy for the reaction: Pg:229 (2008)
mu = 931.5;    // Energy equivalent of 1 amu, MeV
mx = 1.008665;    // Mass of neutron, amu
Mx = 13.003355;    // Mass of carbon atom, amu
M_alpha = 4.002603;    // Mass of alpha particle, amu
M_Be = 10.013534;    // Mass of beryllium, amu
MD = (Mx + mx - M_Be - M_alpha);    // Mass defect of the reaction, amu
Q = MD*mu;    // Q-value of the nuclear reaction, MeV
E_th = -Q*(1 + mx/Mx);    // Threshold energy for the reaction in the laboratory, MeV
printf("\nThe threshold energy of the reaction is = %4.2f MeV", E_th);
// Result
// The threshold energy of the reaction is = 4.13 MeV 