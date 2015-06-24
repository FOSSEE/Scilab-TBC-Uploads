// Scilab Code Ex12.1: Page-432 (2014)
clc; clear;
h = 6.62e-034;    // Planck's constant, Js
h_bar = h/(2*%pi);    // Reduced Planck's constant, Js
m = 1.67e-027;    // Rest mass of proton, kg
e = 1.602e-019;    // Energy equivalent of 1 eV, J
c = 3.00e+008;    // Speed of light, m/s
delta_x = 8.0e-015;    // Size of the nucleus, m
delta_p = h_bar/(2*delta_x*e);    // Uncertainty in momentum of proton from Heisenberg Uncertainty Principle, eV-s/m
p_min = delta_p;    // Minimum momentum of the proton inside the nucleus, eV-s/m
K = (p_min*c)^2*e/(2*m*c^2*1e+006);    // The minimum kinetic energy of the proton in a medium sized nuclecus, MeV
printf("\nThe minimum kinetic energy of the proton in a medium sized nuclecus = %4.2f MeV", K);

// Result
// The minimum kinetic energy of the proton in a medium sized nuclecus = 0.08 MeV 