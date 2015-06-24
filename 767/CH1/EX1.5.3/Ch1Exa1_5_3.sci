// Scilab code Exa1.5.3 : Calculation of energy required to knock out nucleon from He nucleus : Page 37 (2011)
M_p = 1.007895; // Mass of proton, amu
M_n = 1.008665; // Mass of neutron, amu
M_He = 4.0026; // Mass of He-nucleus, amu
Z = 2; // Number of proton
N = 2; // Number of neutron
D_m = [(Z*M_p)+(N*M_n)-M_He]; // Mass defect, amu
amu = 931.49; // Atomic mass unit, MeV
E = D_m*amu; // Required energy, MeV
printf("\nThe energy required to knock out nucleons from the He nucleus = %5.2f MeV", E);

// Result
// The energy required to knock out nucleons from the He nucleus = 28.43 MeV 