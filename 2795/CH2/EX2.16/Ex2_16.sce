// Scilab Code Ex2.16: Page-72 (2013)
clc; clear
u = 931.5;    // Energy equivalent of 1 amu, MeV
c = 1;    // Speed of light in vacuum, m/s
m_e = 0.000549*u;    // Rest mass of an electron, MeV/c^2
m_p = 1.007276*u;    // Rest mass of a proton, MeV/c^2
m_n = 1.008665*u;    // Rest mass of a neutron, MeV/c^2
m_He = 4.002603*u;    // Rest mass of a helium, MeV/c^2
M_He = m_He - 2*m_e;    // Mass of He nucleus, MeV/c^2
E_B_He = (2*m_p + 2*m_n - M_He)*c^2;    // Binding energy of the He nucleus, MeV
printf("\nThe binding energy of the He nucleus = %4.1f MeV", E_B_He);

// Result 
// The binding energy of the He nucleus = 28.3 MeV 