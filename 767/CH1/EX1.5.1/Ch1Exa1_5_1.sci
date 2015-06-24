// Scilab code Exa1.5.1 : Calculation of binding energy of alpha particle and express in MeV and joule : Page 36 (2011)
amu = 931.49; // Atomic mass unit, MeV
M_p = 1.00758; // Mass of proton, amu
M_n = 1.00897;  // Mass of neutron, amu
M_He = 4.0028; // Mass of He nucleus, amu
Z = 2; // Atomic number
N = 2; // Number of neutron
M_defect = Z*M_p+N*M_n-M_He;    // Mass defect, amu
BE_MeV = M_defect*amu; // Binding energy, MeV
BE_J = M_defect*1.49239e-010;    // Binding energy, J
printf("\nThe binding energy (in MeV): %5.2f", BE_MeV)
printf("\nThe binding energy (in J): %4.2e", BE_J)

// Result
// The binding energy (in MeV): 28.22
// The binding energy (in J): 4.52e-012 
