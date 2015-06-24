// Scilab Code Ex13.6: Electronic polarizability from refractive index : Page-289 (2010)
N = 3e+028;    // Number density of atoms of dielectric material, per metre cube
epsilon_0 = 8.854e-012;    // Absolute electrical permittivity of free space, farad per metre
n = 1.6;    // Refractive index of dielectric material
// As (n^2 - 1)/(n^2 + 2) = N*alpha_e/(3*epsilon_0), solving for alpha_e
alpha_e = (n^2 - 1)/(n^2 + 2)*3*epsilon_0/N;    // Electronic polarizability of dielectric material, farad metre square
printf("\nThe electronic polarizability of dielectric material = %4.2e farad metre square", alpha_e);

// Result
// The electronic polarizability of dielectric material = 3.03e-040 farad metre square 