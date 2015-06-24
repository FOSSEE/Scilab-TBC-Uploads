// Scilab Code Ex14.5: Magnetisation-Magnetic flux density-relative permeability of diamagnetic material : Page-307 (2010)
mu_0 = 4*%pi*1e-07;    // Magnetic permeability of free space, tesla metre per ampere
H = 1.2e+005;    // Field strength to which the diamagnetic material is subjected, ampere per metre
chi = -4.2e-006;    // Magnetic susceptibility
M = chi*H;    // Magnetisation of the diamagnetic material, ampere per metre
B = mu_0*(H + M);    // Magnetic flux density of diamagnetic material, T
mu_r = M/H + 1;    // The relative permeability of diamagnetic material
printf("\nThe magnetisation of diamagnetic material = %5.3f ampere per metre", M);
printf("\nThe magnetic flux density of diamagnetic material = %5.3f T", B);
printf("\nThe relative permeability of diamagnetic material = %f T", mu_r);
// Result
// The magnetisation of diamagnetic material = -0.504 ampere per metre
// The magnetic flux density of diamagnetic material = 0.151 T 
// The relative permeability of diamagnetic material = 0.999996 T 