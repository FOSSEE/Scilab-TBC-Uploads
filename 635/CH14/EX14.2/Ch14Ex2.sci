// Scilab Code Ex14.2 Calculating dielectric constant from electric polarizability of the atom: Page-464 (2010)
alpha_Kr = 2.18e-040;    // Electric polarizability of the Kr-atom, farad-metre square
NA = 6.023e+023;    // Avogadro's number
epsilon_0 = 8.85e-012;    // Electrical permittivity of free space, coulomb square per newton per metre square
N = NA/(22.4e-03);    // Number of Kr atoms per metre cube
epsilon_r = N*alpha_Kr/epsilon_0 + 1;    // Relative electrical permittivity of Kr specimen
printf("\nThe diectric constant of Kr specimen = %7.5f", epsilon_r);
// Result 
// The diectric constant of Kr specimen = 1.00066

