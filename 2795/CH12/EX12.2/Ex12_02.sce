// Scilab Code Ex12.2: Page-436 (2014)
clc; clear;
c = 3.00e+008;    // Speed of light, m/s
e = 1.602e-019;    // Energy equivalent of 1 eV, J
m_e = 0.511;    // Rest mass energy of electron, MeV
m_p = 938.3;    // Rest mass energy of proton, MeV
h = 6.62e-034;    // Planck's constant, Js
A = 40;    // Mass number of Ca-40
r0 = 1.2;    // Nuclear radius constant, fm
R = r0*A^(1/3);    // Radius of Ca-40 nucleus, fm
printf("\nThe radius of Ca-40 nucleus = %3.1f fm", R);
lambda = 2.0;    // de-Broglie wavelength to distinguish a distance at least half the radius, fm
// Electron energy
E = ceil(sqrt(m_e^2+(h*c/(lambda*e*1e+006*1e-015))^2));    // Total energy of the probing electron, MeV
K = E - m_e;    // Kinetic energy of probing electron, MeV
printf("\nThe kinetic energy of probing electron = %3d MeV", ceil(K));
// Proton energy
E = ceil(sqrt(m_p^2+(h*c/(lambda*e*1e+006*1e-015))^2));    // Total energy of the probing electron, MeV
K = E - m_p;    // Kinetic energy of probing electron, MeV
printf("\nThe kinetic energy of probing proton = %3d MeV", ceil(K));
 
// Result
//The radius of Ca-40 nucleus = 4.1 fm
// The kinetic energy of probing electron = 620 MeV
// The kinetic energy of probing proton = 187 MeV 
// The answers are deviated due to the approximations used in the textbook