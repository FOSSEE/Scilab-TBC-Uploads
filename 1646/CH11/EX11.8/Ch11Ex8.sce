// Scilab Code Ex11.8 :Page-565 (2011)
clc;clear;
P = 1000;....// Energy radiated by the lamp, watt
r = 2;....// Distance from the source at which the electric field intensity is given, m
S = P/(4*%pi*r^2);      // Magnitude of Poynting vector, W/metre-square
// As wave imepdence, Z0 = E/H = 377 and H = E/377, so that with E*H = S we have
E = poly(0, 'E');
E = roots(E*E/377-S);
printf("\nThe average value of the intensity of electric field of radiation = %4.1f V/m", E(2)); 

// Result
// The average value of the intensity of electric field of radiation = 86.6 V/m 


