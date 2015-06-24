// Scilab code Exa11.14 : : Page-539 (2011)
clc; clear;
M_z = 92;        // Mass of the boson,giga electron volts
E_e = M_z/2;        // Energy of the electron,giga electron volts
c = 3e+08;        // Velocity of the light, metre per second
m_e = 9.1e-31*c^2/(1.6e-019*1e+009);        // Mass of electron, giga electron volts
E_e_plus = M_z^2/(2*m_e);        // Threshold energy for the positron, giga electron volts 
 printf("\nThe energy of the electron = %d GeV\nThe threshold energy of the positron = %4.2e GeV", E_e, E_e_plus);
 
// Result
// The energy of the electron = 46 GeV
// The threshold energy of the positron = 8.27e+006 GeV 