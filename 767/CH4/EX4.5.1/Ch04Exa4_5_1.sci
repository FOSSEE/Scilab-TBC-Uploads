// Scilab code Exa4.5.1: To calculate Q-value for given reaction  : Page 182 (2011)
M_n = 1.00866501; // Mass of neutron, amu
M_Hp = 2.014102; // Mass of proton, amu
M_Hd = 3.016049; // Mass of deutron, amu
M_He = 4.002603; // Mass of alpha particle, amu
Q = [M_Hp+M_Hd-M_He-M_n]*931.49; // Q-value, MeV
printf("\nThe Q-value for the reaction : %4.1f MeV", Q)
// Result
//    The Q-value for the reaction : 17.6 MeV 
