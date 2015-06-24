// Scilab code Ex6.6: Pg 203 (2005)
clc; clear;
c = 1;      // Assume speed of light to be unity, m/s
h_cross = 197.3;    // Reduced Planck's constant, eV.nm/c^2
m_e = 511e+03;          // Mass of an electron, eV/c^2
L = 0.200;  // Length of the box, nm
E1 = %pi^2*(h_cross/c)^2/(2*m_e*L^2);   // Ground state energy of atomic electron, eV
E2 = 2^2*E1;    // Excited state energy of the atomic electron, eV
delta_E = E2- E1;   // Energy that must be applied to the electron  to raise it from ground to the first excited state, eV
h = 2*%pi*h_cross;  // Planck's constant, Js
lambda = h*c/delta_E;   // Wavelength of the photon to cause the electron transition, nm
printf("\nThe energy that must be applied to the electron  to raise it from ground to the first excited state = %4.1f eV", delta_E);
printf("\nThe wavelength of the photon to cause this electron transition = %4.1f nm", lambda);
printf("\nThis wavelength is in the far ultraviolet region.");

// Result
// The energy that must be applied to the electron  to raise it from ground to the first excited state = 28.2 eV
// The wavelength of the photon to cause this electron transition = 44.0 nm
// This wavelength is in the far ultraviolet region.  
