// Scilab Code Ex13.5: Atomic polarizability of sulphur : Page-288 (2010)
N_A = 6.023e+023;    // Avogadro's number, per mole
epsilon_0 = 8.854e-012;    // Absolute electrical permittivity of free space, farad per metre
epsilon_r = 3.75;    // Relative dielectric constant
d = 2050;    // Density of sulphur, kg per metre cube
y = 1/3;    // Internal field constant
M = 32;    // Atomic weight of sulphur, g/mol
N = N_A*1e+03*d/M;    // Number density of atoms of sulphur, per metre cube
// Lorentz relation for local fields give
// E_local = E + P/(3*epsilon_0) which gives
// (epsilon_r - 1)/(epsilon_r + 2) = N*alpha_e/(3*epsilon_0), solving for alpha_e
alpha_e = (epsilon_r - 1)/(epsilon_r + 2)*3*epsilon_0/N;    // Electronic polarizability of sulphur, farad metre square
printf("\nThe electronic polarizability of sulphur = %5.3e farad metre square", alpha_e);

// Result
// The electronic polarizability of sulphur = 3.292e-040 farad metre square