// Scilab code Ex9.4: Pg 311 (2005)
clc; clear;
hc = 1240;    // Product of plank's constant & velocity of light, eV
lamda_1 = 588.995;    // Wavelength of first doublet of Na lines, nm
lamda_2 = 589.592;    // Wavelength of second doublet of Na lines, nm
delta_E = hc*(lamda_2 - lamda_1)/(lamda_1*lamda_2);     // Spin orbit energy, eV
printf("\nSpin orbit energy from doublet spacing = %4.2fe-03 eV", delta_E*1e+03);

// Result
// Spin orbit energy from doublet spacing = 2.13e-03 eV
