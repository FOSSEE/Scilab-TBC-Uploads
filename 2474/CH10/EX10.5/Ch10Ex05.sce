// Scilab code Ex10.5: Pg.424 (2008)
clc; clear;
lamda = 0.38e-09;    // Mean free path, m
v = 1.08e+05;    // Average speed of electrons, m/s
t = lamda/v;    // Relaxation time, s
e = 1.6e-19;    // Electronic charge, C
m_e = 9.11e-31;    // Mass of electrons, kg
n = 8.47e+28;    // Density of electrons, electrons/m^3
rho = m_e/(n*e^2*t);    // Resistivity of Copper, ohm-m
sigma = 1/rho;    // Conductivity of Copper, (ohm-m)^(-1)
printf("\nThe resistivity of copper = %4.2e ohm-m", rho);
printf("\nThe conductivity of copper = %4.2e per ohm-m", sigma);

// Result
// The resistivity of copper = 1.19e-007 ohm-m
// The conductivity of copper = 8.37e+006 per ohm-m 