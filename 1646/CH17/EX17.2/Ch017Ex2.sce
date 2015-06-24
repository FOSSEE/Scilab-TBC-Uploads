// Scilab code Ex17.2 : Pg:889 (2011)
clc;clear;
amu = 931.5;    // Energy equivalent of 1 amu, MeV
m_n = 1.008665;   // Mass of the neutron, amu
m_p = 1.007825;   // Mass of the proton, amu
M_He = 4.002870;   // Mass of the heluim nucleus, amu
c = 3e+08;  // Speed of light, m/s
BE = (2*m_n+2*m_p - M_He)*amu;  // Binding energy for the alpha particle, MeV
printf("\nThe binding energy for the alpha particle = %2d MeV", BE); 

// Result
// The binding energy for the alpha particle = 28 MeV 
