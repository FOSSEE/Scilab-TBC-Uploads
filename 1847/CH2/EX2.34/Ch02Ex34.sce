// Scilab Code Ex2.34:: Page-2.26 (2009)
clc; clear;
t = 3.1e-05;    // Thickness of the soap film, cm
mu = 1.33;      // Refractive index of the soap film
r = 0;      // Angle of refraction of the light ray on the soap film, degrees
// For bright fringe in reflected pattern,
// 2*mu*t*cosd(r) = (2*n+1)*lambda/2
lambda = zeros(3);  
for n = 1:1:3
    lambda(n) = 4*mu*t*cosd(r)/(2*(n-1)+1);     // Wavelengths for n = 1, 2 and 3
    if lambda(n) > 4000e-008 & lambda(n) < 7500e-008 then
        lambda_reflected = lambda(n);
    end
end

printf("\nThe wavelength reflected strongly from the soap film = %5.3e cm", lambda_reflected);

// Result
// The wavelength reflected strongly from the soap film = 5.497e-05 cm 
