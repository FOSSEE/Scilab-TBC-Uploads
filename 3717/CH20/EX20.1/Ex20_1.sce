// Ex20_1 Page:390 (2014)
clc;clear;
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
m = 1.67e-027;    // Mass of a nucleon, kg
h = 6.626e-034;    // Planck's constant, Js
E = 30;    // Energy of alpha particle, MeV
r = 1.2e-015;    // Nuclear constant, m
lambda_p = h/sqrt(2*m*E*1e+006*e);    // de-Broglie wavelength of the proton, m
lambda_a = h/sqrt(2*4*m*E*1e+006*e);    // de-Broglie wavelength of the alpha particle, m
d = 2*r;    // size of the nucleon, m
printf("\nThe wavelength of the proton = %3.1e m", lambda_p);
printf("\nThe wavelength of the alpha particle = %3.1e m", lambda_a);
if ((lambda_p - d) < (lambda_a - d)) then
    printf("\nThe proton is better for studying the nuclear details.")
else
    printf("\nThe alpha particle is better for studying the nuclear details.")
end

// Result
// The wavelength of the proton = 5.2e-015 m
// The wavelength of the alpha particle = 2.6e-015 m
// The alpha particle is better for studying the nuclear details. 