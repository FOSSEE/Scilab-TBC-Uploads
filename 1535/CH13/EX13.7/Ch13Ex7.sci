// Scilab Code Ex13.7: Ratio of electronic polarizability to ionic polarizability: Page-289 (2010)
epsilon_r = 4.9;    // Absolute relative dielectric constant of material, farad per metre
n = 1.6;    // Refractive index of dielectric material
// As (n^2 - 1)/(n^2 + 2)*(alpha_e + alpha_i)/alpha_e = N*(alpha_e + alpha_i)/(3*epsilon_0) = (epsilon_r - 1)/(epsilon_r + 2), solving for alpha_i/alpha_e
alpha_ratio = ((epsilon_r - 1)/(epsilon_r + 2)*(n^2 + 2)/(n^2 - 1) - 1)^(-1);    // Ratio of electronic polarizability to ionic polarizability
printf("\nThe ratio of electronic polarizability to ionic polarizability = %4.2f", alpha_ratio);

// Result
// The ratio of electronic polarizability to ionic polarizability = 1.53 