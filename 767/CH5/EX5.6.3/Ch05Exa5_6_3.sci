// Scilab code Exa5.6.3: To calculate the wavelength of light whose kinetic energy is given : P. No. 232 (2011)
 C = 3e+08; // Speed of light, m/s
 h = 6.626e-034; // Planck's constant, Js
 T_lambda = 190e-09; // Threhold wavelength of light, m
e = 1.6e-019; // Charge of the electron, C
E_max = 1.1; // Maximum kinetic energy of photoelectron, eV
w = h*C/(T_lambda*e); // Work function, eV 
E_t = E_max+w; // threshold energy, eV
lambda = h*C/(E_t*e); // Wavelength of light used, m
printf("\nThe wavelength of light used  : %5.3e m", lambda)
// Result
//     The wavelength of light used  : 1.626e-007 m










































































