// Scilab Code Ex5.1 : Polarization by reflection: Page-113 (2010)
mu_g = 1.72;    // Refractive index of glass
mu_w = 4/3;    // Refractive index of water
// For polarization to occur on flint glass, tan(i) = mu_g/mu_w
// Solving for i
i = atand(mu_g/mu_w);
printf("\nThe angle of incidence for complete polarization to occur on flint glass = %4.1f degrees", i);
// For polarization to occur on water, tan(i) = mu_w/mu_g
// Solving for i
i = atand(mu_w/mu_g);
printf("\nThe angle of incidence for complete polarization to occur on water = %5.2f degrees", i);

// Result 
// The angle of incidence for complete polarization to occur on flint glass = 52.2 degrees
// The angle of incidence for complete polarization to occur on water = 37.78 degrees 