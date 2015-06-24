// Scilab Code Ex12.9 Minimum disintegraton energy of nucleus: Pg: 249 (2008)
mn = 1.008665;    // Mass of neutron, amu
mp = 1.007276;    // Mass of proton, amu
amu = 931;    // Energy equivalent of 1 amu, MeV
BE = 2.21;    // Binding energy of deutron nucleus, MeV
E = BE/amu;    // Binding energy of deutron nucleus, amu
M_D = mp+mn-E;    // Mass of deuterium nucleus, amu
printf("\nThe mass of deuterium nucleus = %8.6f amu", M_D);
// Result 
// The mass of deuterium nucleus = 2.013567 amu 