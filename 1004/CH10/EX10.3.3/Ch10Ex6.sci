// Scilab Code Ex10.3.3 Mass of deuterium nucleus: Pg: 220 (2008)
amu = 1.6e-027;    // Mass of a nucleon, kg
mp = 1.007895;    // Mass of proton, amu
mn = 1.008665;    // Mass of neutron, amu
BE = 2/931;    // Binding energy of two nucleons, amu
M_D = (mp+mn-BE)*amu;    // Mass of a deuterium nucleus, kg
printf("\nThe mass of deuterium nucleus = %5.3e kg", M_D);
// Result 
// The mass of deuterium nucleus = 3.223e-027 kg 