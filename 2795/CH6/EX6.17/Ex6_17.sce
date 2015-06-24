
// Scilab Code Ex6.17: Page-234 (2014)
clc; clear;
h = 6.62e-034;    // Planck's constant, Js
h_bar = h/(2*%pi);    // Reduced Planck's constant, Js
c = 3.00e+008;    // Speed of light, m/s
e = 1.602e-019;    // Charge on an electron, C
k = 9e+009;    // Coulomb constant, N-Sq.m./C^2
m = 3727;    // Energy equivalent of alpha particle rest mass, MeV
E = 5;    // Given energy of the incident electrons, eV
Z1 = 2;    // Atomic number of an alpha particle
Z2 = 92;    // Atomic number of the U-238 nucleus
r_N = 7e-015;    // Nuclear radius, m
K = 4.2;    // Kinetic energy of alpha particle, MeV
V_C = Z1*Z2*e^2*k/(r_N*e*1e+006);    // Coulomb Potential, MeV
r_prime = V_C*r_N/(K*1e-015);    // Distance through which the alpha particle must tunnel, fm
kapa = sqrt(2*m*(V_C-E))*e/(h_bar*c*1e-006);    // Schronginger's Constant, per m
L = r_prime - r_N/1e-015;    // Barrier width, fm
T = 16*(K/V_C)*(1-K/V_C)*exp(-2*kapa*L*1e-015);    // Tunnelling probability of alpha particle
V_C_new = V_C/2;    // Potential equal to half the Coulomb potential, MeV
L = L/2;    // Width equal to half the barrier width, fm
kapa = sqrt(2*m*(V_C_new-E))*e/(h_bar*c*1e-006);    // Schronginger's Constant, per m
T_a = 16*(K/V_C_new)*(1-K/V_C_new)*exp(-2*kapa*L*1e-015);    // Approximated tunnelling probability of alpha particle
v = sqrt(2*K/m)*c;    // Speed of the alpha particle, m/s
t = r_N/v;    // Time taken by alpha particle to cross the U-238 nucleus, s
printf("\nThe barrier height = %2d MeV", ceil(V_C));
printf("\nThe distance that alpha particle must tunnel = %2d fm", r_prime);
printf("\nThe tunneling potential assuming square-top potential = %1.0e", T);
printf("\nThe approximated tunneling potential = %3.1e", T_a);
printf("\nThe speed of the alpha particle = %3.1e m/s", v);
printf("\nThe time taken by alpha particle to cross the U-238 nucleus = %1.0e s", t);

// Result
// The barrier height = 38 MeV
// The distance that alpha particle must tunnel = 63 fm
// The answers are given wrongly in the textbook
// The tunneling potential assuming square-top potential = 6e-123
// The approximated tunneling potential = 3.8e-040
// The speed of the alpha particle = 1.4e+007 m/s
// The time taken by alpha particle to cross the U-238 nucleus = 5e-022 s 
// Some answers are given wrong in the textbook for this problem