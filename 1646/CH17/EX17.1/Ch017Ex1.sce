// Scilab code Ex17.1 : Pg:888 (2011)
clc;clear;
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
m_n = 1.675e-027;   // Mass of the neutron, kg
m_p = 1.672e-027;   // Mass of the proton, kg
M_D = 3.343e-027;   // Mass of the deutron, kg
c = 3e+08;  // Speed of light, m/s
delta_m = m_n + m_p - M_D;  // Mass defect in the formation of deuterium, kg
BE = delta_m*c^2;   // Binding energy of the deuterium, J
BE_bar = BE/2;      // Binding energy per nucleon of deuterium, J
printf("\nBinding energy per nucleon for the deutron = %5.3f MeV", BE_bar/(e*1e+06)); 

// Result
// Binding energy per nucleon for the deutron = 1.125 MeV 
