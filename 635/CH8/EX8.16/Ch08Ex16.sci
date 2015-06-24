// Scilab code Ex8.16: Diffraction of thermal neutrons from planes of Ni crystal  Page 294 (2010)
k = 1.38e-023;    // Boltzmann constant, J/mol/K
h = 6.626e-034;    // Planck's constant, Js
theta = 28.5;    // Bragg's angle, degree
a = 3.52e-010;    // Lattice parameter of fcc structure of nickel, m
m_n = 1.67e-027;    // Rest mass of neutron, kg
// For fcc lattice, the interplanar spacing is given by
d = a/sqrt(3);    // Interplanar spacing of Ni, m
// Bragg's equation for first order diffraction (n = 1) is
lambda = 2*d*sind(theta);    // Bragg's law, m
// From kinetic interpretaion of temperature, we have
// (1/2)*m*v^2 = (3/2)*k*T    -- (a)
// Further from de-Broglie relation
// lambda = h/(m*v)           -- (b)
// From (a) and (b), solving for T, we have
T = h^2/(3*m_n*k*lambda^2);    // Effective temperature of the neutrons, K
printf("\nThe effective temperature of neutrons = %d K", T);
// Result
// The effective temperature of neutrons = 168 K 