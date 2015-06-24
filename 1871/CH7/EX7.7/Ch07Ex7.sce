// Scilab code Ex7.7: Pg:294 (2008)
clc;clear;
c = 3e+08;    // Velocity of light, m/s
e = 1.6e-019;    // Charge of an electron, coulomb
B = 0.5;    // Maximum magnetic field at the electron orbit, Weber per meter square
R = 0.75;    // Radius of the orbit, meter
omega = 50;    // frequency of alternating current through electromagnetic coils, Hz
N = c/(4*2*%pi*omega*R);    // Number of revolutions
E = B*e*R*c/(e*1e+006);    // Final energy of the electrons, MeV
E_av = E*1e+06/N;    // Average energy per revolution, eV
printf("\nThe final energy of electron = %5.1f MeV ", E);
printf("\nThe average energy of electron = %3.0f eV ", E_av);

// Result 
// The final energy of electron = 112.5 MeV 
// The average energy of electron = 353 eV  
// The answer is wrong in the textbook