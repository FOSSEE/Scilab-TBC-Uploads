// Ex17_4 Page:327 (2014)
clc;clear;
m_n = 1.008665;    // Mass of a neutron, amu
m_p = 1.007825;    // Mass of a proton, amu
A = 12;    // Mass number of carbon, amu
Z = 6;    // Atomic number of carbon, amu
N = A - Z;    // Neutron number of carbon, amu
M_C12 = 12.0;    // Mass of C-12 atom, amu
M = Z*m_p + N*m_n;    // Total mass of constituents, amu
delta_m = M - M_C12;    // Mass deficiency, amu
E_B = delta_m * 931.5;    // Binding energy, MeV
E_B_avg = E_B/A;    // Average binding eneryg per nucleon, MeV
printf("\nThe binding energy of C(12,6) = %5.2f MeV", E_B);
printf("\nThe average binding energy per nucleon of C(12,6) = %3.2f MeV", E_B_avg);

// Result
// The binding energy of C(12,6) = 92.16 MeV
// The average binding energy per nucleon of C(12,6) = 7.68 MeV 