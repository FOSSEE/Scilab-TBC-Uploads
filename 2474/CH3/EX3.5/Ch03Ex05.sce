// Scilab code Ex3.5: Pg.131 (2008)
clc; clear;
c = 3e+17;    // Velocity of light, nm/s
h = 6.63e-34;    // Plank's constant, J-s
e = 1.6e-19;    // Electron charge, C
lamda_t = 558;    // Threshold frequency of potassium, nm
phi = h*c/lamda_t;    // Work function of Potassium, eV
lamda = 400;    // Wavelength of light used, nm
V_o = h*c/(e*lamda) - (phi/e);    // Stopping potential from Einstein's Photoelectric equation, V
printf("\nThe stopping potential for potassium = %3.2f V", V_o);

// Result
// Stopping potential for potassium = 0.88 V