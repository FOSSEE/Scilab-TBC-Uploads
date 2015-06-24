// Scilab Code Ex14.1: Page-522(2014)
clc; clear;
e = 1.6e-019;  // Energy equivalent of 1 eV, J
h = 6.62e-034;    // Planck's oconstant, Js
c = 3.00e+008;    // Speed of light in vacuum, m/s
h_bar = h/(2*%pi);    // Reduced Planck's constant, Js
R_N = 1e-015;     // Range of nuclear force, m
// As delta_E*delta_t = h_bar/2 and delta_E = m_pion*c^2, solving for m_pion
m_pion = h_bar*c/(2*R_N*e*1e+006);    // Mass of the meson, MeV/c^2
printf("\nThe estimated mass of meson from Heisenberg uncertainty principle = %d MeV/c^2", round(m_pion));

// Result
// The estimated mass of meson from Heisenberg uncertainty principle = 99 MeV/c^2 
// The answer is rounded off in the textbook