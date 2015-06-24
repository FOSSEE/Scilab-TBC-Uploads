// Scilab code Exa1.5.4 : To calculate binding energy of Fe-56 : Page 38 (2011)
M_Fe = 55.934939; // Mass of Fe-56, amu
M_p = 1.007825; // Mass of proton, amu
M_n = 1.008665; // Mass of neutron, amu
Z = 26; // Atomic number of Fe-56
N = 30; // Number of neutron in Fe-56
amu = 931.49; // Atomic mass unit, MeV
BE = [(Z*M_p)+(N*M_n)-M_Fe]*amu; // Binding energy of Fe-56, MeV
printf("\nThe binding energy of Fe-56 : %6.4f MeV",BE)

// Result
// The binding energy of Fe-56 : 492.2561 MeV 