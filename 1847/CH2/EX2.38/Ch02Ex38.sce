// Scilab Code Ex2.38:: Page-2.28 (2009)
clc; clear;
mu = 1.33;      // Refractive index of the thin soap film
lambda1 = 5500e-008;    // Wavelength of the first dark fringe, cm
lambda2 = 5400e-008;    // Wavelength of the consecutive dark fringe, cm
i = 30;     // Angle of incidence of the light ray on the soap film, degrees
// For overlapping fringes, 
// n*lambda1 = (n+1)*lambda2, solving for n
n = lambda2/(lambda1-lambda2);  // Order of interference fringes
// As mu = sind(i)/sind(r), solving for r
r = asind(sind(i)/mu);
// For dark fringe in reflected pattern,
// 2*mu*t*cosd(r) = 2*n*lambda1, solving for t
t = n*lambda1/(2*mu*cosd(r));    // Thickness of the thin soap film

printf("\nThe thickness of the thin soap film = %5.3e cm", t);

// Result
// The thickness of the thin soap film = 1.205e-03 cm 
