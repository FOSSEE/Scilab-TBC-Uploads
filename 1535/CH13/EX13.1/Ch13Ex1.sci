// Scilab Code Ex13.1: Electronic Polarizability of atom : Page-287 (2010)
epsilon_0 = 8.854e-012;    // Absolute electrical permittivity of free space, farad per metre
R = 0.52e-010;    // Radius of hydrogen atom, angstrom
n = 9.7e+026;    // Number density of hydrogen, per metre cube
alpha_e = 4*%pi*epsilon_0*R^3;    // Electronic polarizability of hydrogen atom, farad-metre square
printf("\nThe electronic polarizability of hydrogen atom = %4.2e farad-metre square", alpha_e);

// Result
// The electronic polarizability of hydrogen atom = 1.56e-041 farad-metre square