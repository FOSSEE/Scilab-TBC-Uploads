// Ex19_3 Page:373 (2014)
clc;clear;
m_p = 1.007825;    // Mass of a proton, u
m_n = 1.008665;    // Mass of a neutron, u
m_U235 = 235.043924;    // Atomic mass of U-235, u
m_Ba141 = 140.91440;    // Atomic mass of Ba-141, u
m_Kr92 = 91.92630;    // Atomic mass of Kr-92, u
delta_m = (m_n + m_U235 - m_Ba141 - m_Kr92 - 3*m_n);    // Mass difference, u
E = delta_m*931.5;    // Energy released in the fission reaction, MeV
printf("\nThe energy released in the fission reaction = %5.1f MeV", E);

// Result
// The energy released in the fission reaction = 173.2 MeV 