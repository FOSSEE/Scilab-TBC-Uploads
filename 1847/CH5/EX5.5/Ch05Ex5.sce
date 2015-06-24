// Scilab Code Ex5.5 :: Page-5.20 (2009)
clc;clear;
e = 1.6e-019;  // Charge on an electron, C
D = 2.0;    // Diameter of the stable orbit in betatron, m
R = D/2;    // Radius of the stable orbit in betatron, m
B = 0.5;    // Magnetic field of betatron, wb/metre square
c = 3e+08;  // final speed of electron in betatron, m/s
E = B*e*R*c;    // Final energy gained by electrons in a betatron, eV
printf("\nThe final energy gained by electrons in the betatron = %3.1e eV", E/e);

// Result
// The final energy gained by electrons in the betatron = 1.5e+08 eV 
