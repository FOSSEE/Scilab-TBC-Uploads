// Scilab Code Ex9.2 Rate of energy loss and range of deuteron and alpha particle: Pg:201 (2008)
E_loss_P = 59;    // Specific rate of energy loss per unit mass per unit area of proton, keV per mg cm square
R_prime_P = 50;    // Range of proton, mg per cm
Z_D = 1;    // Atomic number of deuteron
m_D = 2;    // Mass of deuteron, units
E_loss_D = Z_D^2*E_loss_P;    // Specific rate of energy loss per unit mass per unit area of deuteron, keV per mg cm square
R_prime_D = R_prime_P*m_D/Z_D^2;    // Range of deuteron, mg per cm square
Z_alpha = 2;    // Atomic number of alpha particle
m_alpha = 4;    // Mass of alpha particle, units
E_loss_alpha = Z_alpha^2*E_loss_P;    // Specific rate of energy loss per unit mass per unit area of alpha particle, keV per mg cm square
R_prime_alpha = R_prime_P*m_alpha/Z_alpha^2;    // Range of alpha particle, mg per cm square
printf("\nThe specific rate of energy loss per unit mass per unit area of deuteron = %2d keV per mg cm square", E_loss_D);
printf("\nThe range of deuteron = %3d mg per cm square", R_prime_D);
printf("\nThe specific rate of energy loss per unit mass per unit area of alpha particle = %2d keV per mg cm square", E_loss_alpha);
printf("\nThe range of alpha particle = %2d mg per cm square", R_prime_alpha);
// Result 
// The specific rate of energy loss per unit mass per unit area of deuteron = 59 keV per mg cm square
// The range of deuteron = 100 mg per cm square
// The specific rate of energy loss per unit mass per unit area of alpha particle = 236 keV per mg cm square
// The range of alpha particle = 50 mg per cm square 