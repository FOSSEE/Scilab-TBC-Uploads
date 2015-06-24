// Scilab Code Ex14.2: Page-525(2014)
clc; clear;
e = 1.6e-019;  // Energy equivalent of 1 eV, J
h = 6.62e-034;    // Planck's oconstant, Js
c = 3.00e+008;    // For simplicity assume speed of light to be unity
h_bar = h/(2*%pi);    // Reduced Planck's constant, Js
m_W = 80.4;    // Energy equivalent of mass of W- particle, MeV
R_W = h_bar*c/(2*m_W*e*1e+009);    // Range of W- particle, m
delta_t = h_bar/(2*m_W*e*1e+009);    // Time during which the energy conservation is violated, s
printf("\nThe range of W- particle = %3.1e m", R_W);
printf("\nThe time during which the energy conservation is violated = %1.0e s", delta_t);

// Result
// The range of W- particle = 1.2e-018 m
// The time during which the energy conservation is violated = 4e-027 s 
