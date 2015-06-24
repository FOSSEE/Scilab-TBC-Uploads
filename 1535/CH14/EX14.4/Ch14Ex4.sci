// Scilab Code Ex14.4: Magnetic flux density and magnetisation of diamagnetic material : Page-307 (2010)
mu_0 = 4*%pi*1e-07;    // Magnetic permeability of free space, tesla metre per ampere
H = 10000;    // Field strength to which the diamagnetic material is subjected, ampere per metre
chi = -0.4e-005;    // Magnetic susceptibility
M = chi*H;    // Magnetisation of the diamagnetic material, ampere per metre
B = mu_0*(H + M);    // Magnetic flux density of diamagnetic material, T
printf("\nThe magnetisation of diamagnetic material = %4.2f ampere per metre", M);
printf("\nThe magnetic flux density of diamagnetic material = %6.4f T", B);

// Result
// The magnetisation of diamagnetic material = -0.04 ampere per metre
// The Magnetic flux density of diamagnetic material = 0.0126 T 