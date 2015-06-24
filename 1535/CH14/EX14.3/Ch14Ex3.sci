// Scilab Code Ex14.3: Relative permeability from magnetisation : Page-307 (2010)
H = 300;    // Field strength to which the ferromagnetic material is subjected, ampere per metre
M = 4400;    // Magnetisation of the ferromagnetic material, ampere per metre
chi = M/H;    // Magnetic susceptibility
mu_r = 1 + chi;    // Relative permeability of ferromagnetic material
printf("\nThe relative permeability of ferromagnetic material = %5.2f", mu_r);

// Result
// The relative permeability of ferromagnetic material = 15.67 