// Scilab Code Ex5.3 : Thickness of Quarter Wave Plate : Page-113 (2010)
lambda = 6000e-008;    // Wavelength of incident light, cm
mu_e = 1.55;    // Refractive index of extraordinary ray
mu_o = 1.54;    // Refractive index of ordinary ray
t = lambda/(4*(mu_e - mu_o));    // Thickness of Quarter Wave plate of positive crystal, cm
printf("\nThe thickness of Quarter Wave plate = %6.4f cm", t);

// Result 
// The thickness of Quarter Wave plate = 0.0015 cm