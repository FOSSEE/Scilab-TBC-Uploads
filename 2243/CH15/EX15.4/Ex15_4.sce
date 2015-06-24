clc();
clear;
//Given :
n1 = 1.525; // refractive index of core
n2 = 1.500; // refractive index of cladding
d = 30; // core diameter in mu_m
a = d/2; // core radius in mu_m
ab = 0.00001/100; // percentage absorbed
delta = (n1-n2)/n1;
Ls = a*sqrt(2/delta);// skip distance in mu_m
//1 mu_m = 1.0*10^-6 m
R = 1000/(Ls*10^-6); // reflections per km (1000 m)
red_p = 1 - ab; // reduced power for each reflection
//Power P1km = P0*red_p^(6*10^6)
// A = 10*log10[P0/P1km] , P0 in the numerator and denominator will cancel each other
A = 10*log10(1/(red_p)^(R));
printf("Attenuation = %.1f dB/km",A);
