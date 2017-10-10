// Ex17_6 Page:335 (2014)
clc;clear;
m_n = 1.008665;    // Mass of a neutron, amu
M_Na22 = 21.9944;    // Mass of Na-22 atom, amu
M_Na23 = 22.989767;    // Mass of Na-23 atom, amu
delta_m = M_Na22 + m_n - M_Na23;    // Mass deficiency with Na-23, amu
E_B = delta_m*931.5;    // Energy equivalent of mass deficiency, MeV
printf("\nThe binding energy of the last neutron in Na-23 = %4.1f MeV", E_B);

// Result
// The binding energy of the last neutron in Na-23 = 12.4 MeV 