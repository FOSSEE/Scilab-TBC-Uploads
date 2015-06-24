// Scilab Code Ex16.3: Page-587(2014)
clc; clear;
m_n = 939.566;    // Rest mass of the neutron, MeV/c^2
m_p = 938.272;    // Rest mass of the proton, MeV/c^2
e = 1.6e-019;    // Energy equivalent of 1 eV, J
c = 1;    // For simplicity assume speed of light of light to be unity
T = 1e+010;    // Temperature of the universe, K
delta_m = m_n - m_p;    // Mass difference between a proton and a neutron, MeV/c^2
k = 1.38e-023;    // Boltzmann constant, J/k
// As from Maxwell-Boltzmann distribution from thermodynamics, N = exp(-m*c^2/(k*T)), so
ratio = exp(delta_m*c^2*1e+006*e/(k*T));    // Ratio of protons to neutrons in the universe at 10 billion kelvin
printf("\nThe ratio of protons to neutrons in the universe at 10 billion kelvin = %3.1f", ratio);

// Result
// The ratio of protons to neutrons in the universe at 10 billion kelvin = 4.5 