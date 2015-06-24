// Scilab code Ex3.7: Pg.132 (2008)
clc; clear;
c = 3e+17;    // Velocity of light, nm/s
e = 1.60e-19;    // Conversion factor
h = 6.63e-34/e;    // Plank's constant, eV-s
lamda = 400;    // Wavelength of incident light, nm
I = 1e-02;    // Intensity of incident light, J/s^2-m^2
E = h*c*e/lamda;    // Energy of each photon, J
N = I/E;    // Number of photons per second per square meter, photons/s m^2
printf("\nThe number of photons incident per second per square metre = %4.2e photons/s Sq.m", N);

// Result
// The number of photons incident per second per square metre = 2.01e+016 photons/s Sq.m