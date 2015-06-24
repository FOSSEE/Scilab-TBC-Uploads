// Scilab code Ex8.8: Pg.350 (2008)
clc; clear;

// Part (a)
// For simplicity let kT be unity
kT = 1;    // Product of Boltzmann constant & temperature, J
hf = 2*kT;    // Product of Plank's constant & frequency, J-s-Hz
E = hf/(exp(hf/kT)-1);    // Average energy of vibration of molecules, J
printf("\nThe average energy of vibration of molecules at temperature T = hf/2k = %4.2f kT", E);

// Part (b)
// For simplicity let kT be unity
kT = 1;    // Product of Boltzmann constant & temperature, J
hf = 0.25*kT;    // Product of Plank's constant & frequency, J-s-Hz
E = hf/(exp(hf/kT)-1);    // Average energy of vibration of molecules, J
printf("\nThe average energy of vibration of molecules at temperature T = 4hf/2k = %4.2f kT", E);

// Result
// The average energy of vibration of molecules at temperature T = hf/2k = 0.31 kT
// The average energy of vibration of molecules at temperature T = 4hf/2k = 0.88 kT 