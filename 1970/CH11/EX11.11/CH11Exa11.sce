// Scilab code Exa11.11 : : Page-538 (2011)
clc; clear;
E = 3;        // Energy of proton synchrotron, giga electron volts
m_0_c_sq = 0.938;        // Relativistic energy, mega electron volts
P_p = sqrt(E^2-m_0_c_sq^2);        // Momentum of the proton, giga electron volts per c
P_n = 6*P_p;        // Momentum of the N(14) ions, giga electron volts
T_n = sqrt(P_n^2+(0.938*14)^2)-0.938*14;        // Kinetic energy of the accelerated nitrogen ion
 printf("\nThe kinetic energy of the accelerated nitrogen ion = %4.2f MeV", T_n);

// Result
// The kinetic energy of the accelerated nitrogen ion = 8.43 MeV 
