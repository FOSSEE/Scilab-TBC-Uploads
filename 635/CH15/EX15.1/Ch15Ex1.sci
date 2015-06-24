// Scilab Code Ex15.1 Determining Photon number by using Planck quantum law: Page-486 (2010)
h = 6.626e-034;    // Planck's constant, Js
f = 1760e+03;    // Frequency of the radio transmitter, Hz
P = 10e+03;    // Power of radio transmitter, W
E = h*f;    // Energy carried by one photon from Planck's law, J
N = P/E;    // Number of photons emitted per second, number per second
printf("\nThe number of photons emitted per second = %4.2e", N);
// Result 
// The number of photons emitted per second = 8.58e+030

