// Scilab code Ex5.3: Pg 158 (2005)
clc; clear;
h = 6.63e-34;    // Plank's constant, J-s
lamda = 1e-10;     // de Broglie wavelength of neutron, m
p = h/lamda;     // Momentum associated with neutron, kg-m/s
m_n = 1.66e-27;     // Mass of neutron, kg
e = 1.6e-19;    // Energy equivalent of 1 eV, J/eV
K = p^2/(2*m_n);    // Kinetic energy of neutron, eV
printf("\nThe momentum of neutrons = %4.2e kg-m/s", p)
printf("\nThe kinetic energy of neutrons = %4.2fe-20 J = %6.4f eV", K*1e+20, K/e);

// Result
// The momentum of neutrons = 6.63e-24 kg-m/s
// The kinetic energy of neutrons = 1.32e-20 J = 0.0828 eV 
