// Scilab code Exa1.3 :  : Page 52 (2011)
clc; clear; 
p = 62;                 // Momentum of the electron, MeV/c
K = 9e+09;              // Coulomb constant
E = 0.511;              // Energy of the electron, MeV
e = 1.60218e-019;       // Charge of an electron, C
Z = 23;                 // Atomic number
R = 0.5*10^-14;         // Diameter of the nucleus, meter
T = sqrt(p^2+E^2)-E;    // Kinetic energy of the electron,MeV
E_c = -Z*K*e^2/(R*1.60218e-013);                // Coulomb energy, MeV
printf("\nKinetic energy of the electron : %5.2f MeV \nCoulomb energy per electron : %5.3f MeV",T,E_c);

// Result
// Kinetic energy of the electron : 61.49 MeV 
// Coulomb energy per electron : -6.633 MeV 
