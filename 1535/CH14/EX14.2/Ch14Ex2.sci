// Scilab Code Ex14.2: Relative permeability of ferromagnetic material : Page-307 (2010)
H = 200;    // Field strength to which the ferromagnetic material is subjected, ampere per metre
M = 3100;    // Magnetisation of the ferromagnetic material, ampere per metre
chi = M/H;    // Magnetic susceptibility
mu_r = 1 + chi;    // Relative permeability of ferromagnetic material
printf("\nThe relative permeability of ferromagnetic material = %4.1f", mu_r);

// Result
// The relative permeability of ferromagnetic material = 16.5 