// Scilab code Exa1.11.1 : To find the speed, mass and mass number of the ion which is accelerated in a mass spectrograph : Page 40 (2011)
V = 1000; // Potential difference, volts
R = 0.122; // Radius of the circular path, m
B = 1500e-04; // Magnetic field, tesla
e = 1.602e-019; // Charge of the electron, C
amu = 1.673e-027; // Atomic mass unit, kg
v = (2*V)/(R*B); // Speed of the ion, m/s
M = 2*e*V/v^2; // Mass of the ion, kg
A = M/amu; // Mass number
printf("\n    Speed   >  %5.3e m/s  \n    Mass    >  %5.3e kg  \n    Mass number   >  %5.2f ",v, M, A);

// Result
//  
//    Speed   >  1.093e+005 m/s  
//   Mass    >  2.682e-026 kg  
//     Mass number   >  16.03