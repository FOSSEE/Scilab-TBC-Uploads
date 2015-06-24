// Scilab code Ex11.26: Pg.539 (2008)
clc; clear;
n = 12/100;    // Efficiency of detector
m_l = 25e-03;    // Mass of link, g
R_t = 7.5e+04;    // Activity if the link, decays/s
R_inf = R_t/n;    // Saturated activity, decays/s
N_A = 6.02e+023;    // Avagadros number, atoms/mole
W = 197;    // Atomic weight of Au, g/mol
sigma = 98.8e-024;    // Cross section, cm^2
I = 1e+10;    // Neutron flux, neutrons/s-cm^2
m_Au = R_inf*W/(N_A*sigma*I);    // Mass of Au in sample at saturation activity, g
Au_percent = m_Au/m_l*100;    // Percentage of Au by weight in the link
printf("\nThe percentage of Au by weight in the link = %3.1f percent", Au_percent);

// Result
// The percentage of Au by weight in the link = 0.8 percent 