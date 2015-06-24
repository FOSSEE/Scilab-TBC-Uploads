// Scilab code Ex7.8: Pg:295 (2008)
clc;clear;
c = 3e+08;    // Velocity of light, m/s
e = 1.6e-019;    // Charge of an electron, coulomb
B = 0.5;    // Maximum magnetic field at the electron orbit, Weber per meter square
D = 1.5;    // Diameter of the orbit, meter 
R = D/2;    // Radius of the orbit, meter
omega = 50;    // frequency of alternating current through electromagnetic coils, Hz
N = c/(4*2*%pi*omega*R);    // Number of revolutions
E = B*e*R*c/1.6e-013;    // Final energy of the electrons, MeV
E_av = (E*1e+06)/N;    // Average energy per revolution, eV
printf("\nThe energy per revolution of the electron = %4.1f eV ", E);
printf("\nThe average energy of electron = %3.0f eV ", E_av);

// Result 
// The energy per revolution of the electron = 112.5 eV 
// The average energy of electron = 353 eV 
// The answer is given wrong in the textbook