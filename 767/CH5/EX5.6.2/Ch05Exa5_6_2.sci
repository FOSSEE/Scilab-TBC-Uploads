// Scilab code Exa5.6.2: To calculate the kinetic energy of photoelectron and rate at which photoelectron emitted : P.no. 231 (2011)
 C = 3e+08; // Speed of light, m/s
 h = 6.626e-034; // Planck's constant, Js
 lambda = 250e-09; // Wavelength of light, m
 w = 2.30; // Work function, eV
A = 2e-04; // Area of the surface, m^2 
I = 2; // Intensity of light, W/m^2
e = 1.6e-019; // Charge of the electron, C
E_p = h*C/(lambda*e); // Energy of photoelectron, eV
E_max = E_p-w; // Maximum kinetic energy of photoelectron, eV
n_p = I*A/(E_p*e); // Number of photons reaching the surface per second, photons/s
R_p = 0.2/100*n_p; // Rate at which photoelectrons are emitted, photoelectrons/s
printf("\n The maximum kinetic energy   = %4.2f eV  \n The rate at which photoelectrons are emitted    =  %4.2e photoelectrons/s ", E_max, R_p)
// Result
//        The maximum kinetic energy   = 2.67 eV  
 // The rate at which photoelectrons are emitted    =  1.01e+012 photoelectrons/s












































































