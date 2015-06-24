// Scilab Code Ex5.4 : Behaviour of half wave plate for increased wavelength : Page-114 (2010)
lambda = 1;    // For simplicity, wavelength of incident light is assumed to be , cm
mu_e = 1.55;    // Refractive index of extraordinary ray
mu_o = 1.54;    // Refractive index of ordinary ray
t = lambda/(2*(mu_e - mu_o));    // Thickness of Half Wave plate for given lambda, cm
t_prime = 2*lambda/(2*(mu_e - mu_o));  // Thickness of Half Wave plate for twice lambda, cm
printf("\nThe thickness of half wave plate is %2.1f times that of the quarter wave plate.", t/t_prime);
printf("\nThe half wave plate behaves as a quarter wave plate for twice the wavelength of incident light.");

// Result 
// The thickness of half wave plate is 0.5 times that of the quarter wave plate.
// The half wave plate behaves as a quarter wave plate for twice the wavelength of incident light.