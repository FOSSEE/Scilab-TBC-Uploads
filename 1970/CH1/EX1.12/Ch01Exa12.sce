// Scilab code Exa1.12 :  : Page 55 (2011)
clc; clear;
M_n =  1.008665*931.49;             // Mass of neutron, MeV
M_p = 1.007825*931.49;             // Mass of proton, MeV
M_He = 2*M_p+2*M_n-28;        // Mass of He-4 nucleus, MeV
M_H = M_p+M_n-2.2;            // Mass of H-2 nucleus, MeV
d_E = 2*M_H-M_He;                // Energy released during fusion reaction, MeV
printf("\nEnergy released during fusion reaction : %4.1f MeV ",d_E);

// Result
// Energy released during fusion reaction : 23.6 MeV 
