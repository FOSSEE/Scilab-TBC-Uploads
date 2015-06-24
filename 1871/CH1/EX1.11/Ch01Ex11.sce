// Scilab code Ex1.11:  Pg:36 (2008)
clc;clear;
h = 6.62e-034;    // Planck's constant, joule-sec
c = 3e+08;    // Velocity of light, m/s
m = 9.13e-031;    // Mass of an electron, kg
e = 1.6e-019;    // Charge of electron, coulomb
V = 18000;    // Potential difference applied between cathode and anode, volts
E = e*V;    // Energy of the electron, joule
// Since energy of X-rays is equal to energy of the electron thus
// h*c/Lambda = e*V, solving for Lambda
Lambda = h*c/E;    // Wavelength of X-rays, angstorm
printf("\nThe shortest wavelength of X-rays in an X-ray tube = %4.2f angstorm", Lambda/1e-010);

// Result 
// The shortest wavelength of X-rays in an X-ray tube = 0.69 angstorm 