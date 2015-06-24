// Scilab Code Ex2.42:: Page-2.30 (2009)
clc; clear;
mu = 1.5;      // Refractive index of the plate
t = 0.5e-006;   // Thickness of the plate, m
r = 0;      // Angle of refraction for normal incidence, degrees
// For bright fringe in reflected pattern,
// 2*mu*t*cosd(r) = (2*n+1)*lambda/2, solving for lambda for different n's
lambda = zeros(4);  
for n = 0:1:3
    lambda(n+1) = 4*mu*t*cosd(r)/(2*n+1);     // Wavelengths for n = 0, 1, 2 and 3
    lambda_strong = lambda(n+1);
    if lambda(n+1) >= 4000e-010 & lambda(n+1) <= 7500e-010 then
          if lambda_strong > lambda(n+1)  then  // Search for the stronger wavelength
              lambda_strong = lambda(n+1);
          end
    end
end

printf("\nFor n = %d, %4.0f angstrom will be reflected strongly", n, lambda_strong/1e-010);

// Result
// For n = 3, 4286 angstrom will be reflected strongly 
