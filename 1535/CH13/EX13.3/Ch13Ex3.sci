// Scilab Code Ex13.3: Dielectric displacement of medium: Page-288 (2010)
epsilon_0 = 8.854e-012;    // Absolute electrical permittivity of free space, farad per metre
epsilon_r = 5.0;    // Dielectric constant of the material between the plates of capacitor
V = 15;    // Potential difference applied between the plates of the capacitor, volt
d = 1.5e-003;    // Separation between the plates of the capacitor, m
// Electric displacement, D = epsilon_0*epsilon_r*E, as E = V/d, so 
D = epsilon_0*epsilon_r*V/d;    // Dielectric displacement, coulomb per metre square
printf("\nThe dielectric displacement = %5.3e coulomb per metre square", D);

// Result
// The dielectric displacement = 4.427e-007 coulomb per metre square 