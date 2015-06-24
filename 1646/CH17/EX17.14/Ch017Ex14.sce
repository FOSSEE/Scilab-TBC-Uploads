// Scilab code Ex17.14 : Pg:896 (2011)
clc;clear;
e = 1.6e-019;    // Charge on an electron, C    
c = 3e+08;        // Speed of light, m/s
B_orbit = 0.5;    // Magnetic field at the orbit of the betatron, T
f = 60;    // Operating frequency of the betatron, Hz
omega = 2*%pi*f;    // Angular frequency of operation, rad/s
r = 1.6/2;    // Radius of stable orbit, m
K_av = 4*omega*e*r^2*B_orbit/1.6e-019;    // Average energy gained by the electron per turn, eV
K_max = c*e*r*B_orbit/1.6e-019;    // Maximum energy gained by the eectron, eV
printf("\nThe average energy gained by the electron per turn = %5.1f eV", K_av);
printf("\nThe maximum energy gained by the electron = %5.1e eV", K_max);

// Result
// The average energy gained by the electron per turn = 482.5 eV
// The maximum energy gained by the electron = 1.2e+008 eV 
