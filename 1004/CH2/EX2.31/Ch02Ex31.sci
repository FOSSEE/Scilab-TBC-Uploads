// Scilab Code Ex2.31 Atomic number of impurity in Zinc target: Pg:65 (2008)
L1 = 1.43603e-010;    // Wavelength of characteristic K_alpha line from Zn, m
Z1 = 30;    // Atomic number of zinc
L2 = 0.53832e-010;    // Wavelength of unknown line from Zn, m
// As (1/L1)/(1/L2) = (Z1/Z2)^2, solving for Z2
Z2 = Z1*(L1/L2)^(1/2);    // Atomic number of impurity in Zn target
printf("\nThe atomic number of impurity in Zn target = %2d", round(Z2));
// Result 
// The atomic number of impurity in Zn target = 49 