// Scilab code Exa6.6: : Page-242 (2011)
clc; clear;
c = 1;  // For simplicity assume speed of light to be unity, m/s
E_0 = 0.155;        // End point energy, mega electron volts
E_beta = 0.025;        // Energy of beta particle, mega electron volts
E_v = E_0-E_beta;        // Energy of the neutrino, mega electron volts
p_v = E_v/c;            // Linear momentum of neutrino, mega electron volts per c
m = 0.511;            // Mass of an electron, Kg
M = 14*1.66e-27;        // Mass of carbon 14,Kg
c = 3e+8;                // Velocity of light, metre per sec
e = 1.60218e-19;            // Charge of an electron, coulomb
p_beta = sqrt(2*m*E_beta);    // Linear momentum of beta particle, MeV/c
sin_theta = p_beta/p_v*sind(45);    // Sine of angle theta
p_R = p_beta*cosd(45)+p_v*sqrt(1-sin_theta^2);  // Linear momemtum of recoil nucleus, MeV/c
E_R = (p_R*1.6e-13/2.9979e+08)^2/(2*M*e);  // Recoil energy of product nucleus, MeV
printf("\nThe linear momentum of neutrino = %4.2f MeV/c \nThe linear momentum of beta particle = %6.4f MeV/c \nThe energy of the recoil nucleus = %4.2f eV", p_v, p_beta, E_R);

// Result
// The linear momentum of neutrino = 0.13 MeV/c 
// The linear momentum of beta particle = 0.1598 MeV/c 
// The energy of the recoil nucleus = 1.20 eV 
