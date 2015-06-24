// Scilab Code Ex2.36:: Page-2.27 (2009)
clc; clear;
t = 4.5e-05;    // Thickness of the soap film, cm
mu = 1.33;      // Refractive index of the soap film
i = 45;     // Angle of incidence of the light ray on the soap film, degrees
// As mu = sind(i)/sind(r), solving for r
r = asind(sind(i)/mu);
// For dark fringe in reflected pattern,
// 2*mu*t*cosd(r) = n*lambda, solving for lambda for different n's
lambda = zeros(4);  
for n = 1:1:4
    lambda(n) = 2*mu*t*cosd(r)/n;     // Wavelengths for n = 1, 2, 3 and 4
    if lambda(n) > 4000e-008 & lambda(n) < 7500e-008 then
        lambda_absent = lambda(n);
    end
end
printf("\nThe absent wavelength of reflected light in the visible spectrum = %4.2e", lambda_absent);

// Result
// The absent wavelength of reflected light in the visible spectrum = 5.07e-05 
