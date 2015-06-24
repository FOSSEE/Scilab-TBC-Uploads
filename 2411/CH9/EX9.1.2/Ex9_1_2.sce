// Scilab Code Ex9.1.2:Page-411 (2008)
clc; clear;
e = 1.6e-013;    // Energy equivalent of 1 MeV, J
m_p = 1.672e-027;     // Mass of a proton, kg
m_n = 1.675e-027;    // Mass of a neutron, kg
M_D = 3.343e-027;    // Mass of a deutron, kg
c = 3.00e+008;    // Speed of light in vacuum, m/s
delta_m = m_p + m_n - M_D;    // Mass defect, kg
E_B = delta_m*c^2/e;    // Binding energy for the deutron, MeV
BE_bar = E_B/2;    // Binding energy per nucleon for the deutron, MeV
printf("\nThe binding energy per nucleon for the deutron = %5.3f MeV/nucleon", BE_bar);

// Result 
// The binding energy per nucleon for the deutron = 1.125 MeV/nucleon 