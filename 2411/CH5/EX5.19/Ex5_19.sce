// Scilab Code Ex5.19: Page-294 (2008)
clc; clear;
h = 6.62e-034;    // Planck's constant, Js
e = 1.602e-019;    // Energy equivalent of 1 eV, J
m = 1.67e-027;    // Rest mass of a proton, kg
r = 5e-015;    // Radius of the nucleus, m
delta_x = 2*r;    // Minimum uncertainty in position of the proton, m
delta_p = h/(2*%pi*delta_x);    // Minimum uncertainty in proton's momentum, kg-m/s
KE = delta_p^2/(2*m);    // Minimum kinetic emergy of the proton, J
printf("\nThe minimum uncertainty in momentum of the proton = %4.2e kg-m/s", delta_p);
printf("\nThe minimum kinetic emergy of the proton = %5.3f MeV", KE/(e*1e+006));

// Result
// The minimum uncertainty in momentum of the proton = 1.05e-020 kg-m/s
// The minimum kinetic emergy of the proton = 0.207 MeV 