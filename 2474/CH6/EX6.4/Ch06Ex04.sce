// Scilab code Ex6.4: Pg.237 (2008)
clc; clear;

// Part (a)
L = 0.1;    // Length of box, nm
h = 4.136e-15;    // Planck's constant, eV-s
c = 3e+17;    // Velocity of light, nm/s
E = 0.511e+06;    // Rest mass energy of an electron, eV
E_1 = (h*c)^2/(8*E*L^2)    // Energy of electron in ground state, eV
printf("\nThe energy of electron in the ground state = %4.1f eV", E_1);

// Part (b)
E(3) = zeros(3);    // Declare an array of three elements
for n = 1:1:3
    E(n) = n^2*E_1;
end
dE_32 = E(3) - E(2);
dE_31 = E(3) - E(1);
dE_21 = E(2) - E(1);
lambda_32 = h*c/dE_32;    // Photon wavelength for 3->2 transition
lambda_31 = h*c/dE_31;    // Photon wavelength for 3->1 transition
lambda_21 = h*c/dE_21;    // Photon wavelength for 2->1 transition
printf("\nWavelength for transiion from n = 3 to n = 2 is %4.2f nm", lambda_32);
printf("\nWavelength for transiion from n = 3 to n = 1 is %4.2f nm", lambda_31);
printf("\nWavelength for transiion from n = 2 to n = 1 is %4.2f nm", lambda_21);

// Result
// The energy of electron in the ground state = 37.7 eV
// Wavelength for transiion from n = 3 to n = 2 is 6.59 nm
// Wavelength for transiion from n = 3 to n = 1 is 4.12 nm
// Wavelength for transiion from n = 2 to n = 1 is 10.98 nm 