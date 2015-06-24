// Scilab code: Ex3.6 : Comparison of energy of photon and neutron: Pg: 79 (2008)
m = 1.67e-027;    // Mass of neutron, kg
L = 1e-010;    // Wavelength of neutron and photon, m
c = 3e+08;    // Velocity of light, m/s
h = 6.624e-034;    // Plancks constant, joule second
U_1 = h*c/L;    // Energy of photon, joule
// Since  U_2 = (m*v^2)/2, Energy of neutron, joule
// Thus v = h/m*L_2, Velocity of the particle, m/s
// on solving for U_2
U_2 = h^2/(2*m*L^2);    // Energy of photon, joule
printf("\nThe ratio of energy of photon and neutron = %4.2e ", U_1/U_2);
// Result
// The ratio of energy of photon and neutron = 1.51e+005  