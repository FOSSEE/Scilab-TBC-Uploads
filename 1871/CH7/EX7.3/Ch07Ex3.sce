// Scilab code Ex7.3: Pg:276 (2008)
clc;clear;
M_n = 1.6747e-027;    // Mass of neutron, kg
M_p = 1.6725e-027;    // Mass of proton, kg
M_e = 9e-031;    // Mass of electron, kg
c = 3e+08;    // Velocity of light, m/s
delta_m = M_n-(M_p + M_e);    // Mass defect, kg
E = delta_m*c^2/1.6e-013;    // Energy released, MeV
printf("\nThe energy produced when a neutron breaks into a proton and an electron  = %4.2f MeV", E);

// Result 
// The energy produced when a neutron breaks into a proton and an electron  = 0.73 MeV