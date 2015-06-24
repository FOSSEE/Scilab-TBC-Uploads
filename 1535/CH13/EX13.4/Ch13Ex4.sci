// Scilab Code Ex13.4: Relative dielectric constant : Page-288 (2010)
epsilon_0 = 8.854e-012;    // Absolute electrical permittivity of free space, farad per metre
N = 3.0e+028;    // Number density of solid elemental dielectric, atoms per metre cube
alpha_e = 1e-040;    // Electronic polarizability, farad metre square
epsilon_r = 1 + N*alpha_e/epsilon_0;    // Relative dielectric constant of the material
printf("\nThe Relative dielectric constant of the material = %5.3f", epsilon_r);

// Result
// The Relative dielectric constant of the material = 1.339 