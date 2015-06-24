// Scilab code Ex7.10: Pg:306 (2008)
clc;clear;
m_u = 235.0439;    // Mass of uranium, amu
m_n = 1.0087;    // Mass of neutron, amu
m_Ba = 140.9139;    // Mass of Barium, amu
m_Kr = 91.8937;    // Mass of Krypton, amu
M_1 = m_u + m_n;    // Sum of masses before reaction, amu
M_2 = m_Ba + m_Kr + 3*m_n;    // Sum of masses after reaction, amu
delta_m = M_1 -M_2;    // Mass lost in the fission, amu
// Since the number of atoms in 235 g of Uranium is 6.02e+023
N = 6.02e+023/235;    // Number of atoms in one gm of U-235
// Since energy equivalent of 1 amu is 931.5MeV
E_MeV = delta_m*N*931.5;    // Energy released in fission of Uranium 235, MeV
printf("\nTotal energy in fission of uranium reaction in MeV = %4.2e MeV ", E_MeV);
E_kWh = E_MeV*1.6e-013/3.6e+06;    // Energy released in fission of Uranium 235, kWh
printf("\nTotal energy in fission of uranium reaction in kiloWatt hour = %4.2e kWh", E_kWh);

// Result 
// Total energy in fission of uranium reaction in MeV = 5.22e+023 MeV 
// Total energy in fission of uranium reaction in kiloWatt hour = 2.32e+004 kWh 