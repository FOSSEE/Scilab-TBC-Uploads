// Scilab code Ex4.8: Pg 136 (2005)
clc; clear;

// Part (a)
n_i = 3;     // Initial level of electron
n_f = 2;     // Final level of electron
R = 1.097e+07;   // Rydberg constant, per metre
c = 3e+08;      // Velocity of light, m/s
h = 6.626e-34;   // Plank's constant, Js
lamda_max = (n_i^2*n_f^2)/((n_i^2-n_f^2)*R);     //  Maximum wavelength of emitted photon, m
E_photon = (h*c)/(lamda_max*1.6e-19);        // Energy of emitted photon, eV
printf("\nThe maximum wavelength of emitted photon = %5.1f nm", lamda_max/1e-09);
printf("\nEnergy of emitted photon = %4.2f eV", E_photon);

// Part (b)
n_i = %inf;    // Initial level of electron
lamda_min = 1/(R*(1/n_f^2-1/n_i^2));
printf("\nThe wavelength corresponding to the series limit = %5.1f nm which is in the ultraviolet region", lamda_min/1e-09);

// Result
// The maximum wavelength of emitted photon = 656.3 nm
// Energy of emitted photon =1.89 eV
//// The wavelength corresponding to the series limit = 364.6 nm which is in the ultraviolet region 
