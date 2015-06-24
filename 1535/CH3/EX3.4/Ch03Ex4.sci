// Scilab Code Ex3.4 : Page-72 (2010)
lambda = 5893e-010;    // Wavelength of monochromatic lihgt used, m
n = 1;    // Number of fringe for the least thickness of the film
r = 0;    // Value of refraction angle for normal incidence, degrees
mu = 1.42;    // refractive index of the soap film
// As for constructive interference, 
// 2*mu*t*cos(r) = (2*n-1)*lambda/2, solving for t
t = (2*n-1)*lambda/(4*mu*cos(r));    // Thickness of the film that appears bright, m
printf("\nThe thickness of the film that appears bright = %6.1f angstrom", t/1e-010);
// As for destructive interference, 
// 2*mu*t*cos(r) = n*lambda, solving for t
t = n*lambda/(2*mu*cos(r));    // Thickness of the film that appears bright, m
printf("\nThe thickness of the film that appears dark = %4d angstrom", t/1e-010);

// Result 
// The thickness of the film that appears bright = 1037.5 angstrom
// The thickness of the film that appears dark = 2075 angstrom 