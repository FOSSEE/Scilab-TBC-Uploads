// Scilab Code Ex6.2: Page-192 (2006)
clc; clear;
c = 3e+08;      // Speed of light, m/s
h = 6.626e-034;     // Planck's constant, Js
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
omega = 2e+014;      // Wave vector involved in phonon energy, rad per sec
f = omega/(2*%pi);   // Frequency of the wave, Hz 
E = h*f/e;        // Phonon energy involved in Si to lift the electron, eV
printf("\nThe phonon energy involved in Si = %5.3f eV which is insufficient to lift an electron.", E);

// Result 
// The phonon energy involved in Si = 0.132 eV which is insufficient to lift an electron. 
