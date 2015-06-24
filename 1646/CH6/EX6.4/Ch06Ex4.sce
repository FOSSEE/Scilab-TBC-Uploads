// Scilab Code Ex6.4: Page-371 (2011)
clc;clear;
lambda = 3e-011;....// Wavelength of the X-ray, m
d = 5e-011;....// Lattice spacing, m 
n = [2 3];....// Orders of diffraction
// Bragg's equation for X-rays of wavelength lambda is n*lambda = 2*d*sin(theta), solving for thetas
for i = 1:1:2
theta = asind(n(i)*lambda/(2*d));    
printf("\nFor n = %d, theta = %4.1f degrees", n(i), theta);
end

// Result
// For n = 2, theta = 36.9 degrees
// For n = 3, theta = 64.2 degrees 