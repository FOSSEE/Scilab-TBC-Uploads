// Scilab Code Ex3.7 : Page-72 (2010)
D4 = 0.4;    // Diameter of 4th dark ring, cm
D12 = 0.7;    // Diameter of 12th dark ring, cm
// We have dn_puls_k^2-Dn^2 = 4*k*R*lambda, so
// D12^2-D4^2 = 32*R*lambda and D20^2-D12^2 = 32*R*lambda for k = 8, solving for D20
D20 = sqrt(2*D12^2-D4^2);    // Diameter of 20th dark ring, cm
printf("\nThe diameter of 20th dark ring = %6.4f cm", D20);

// Result 
// The diameter of 20th dark ring = 0.9055 cm 