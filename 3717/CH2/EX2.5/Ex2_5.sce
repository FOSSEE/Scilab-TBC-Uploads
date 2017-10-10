// Ex2_5 Page:35 (2014)
clc; clear;
h = 6.626e-034; // Planck's constant, Js
c = 3e+08;  // Speed of light, m/s
m0 = 9.1e-031;  // Mass of the electron, kg
lambda = 0.15e-09;  // Wavelength of the incident X-rays, m
theta = zeros(3);   // Declare a row matrix for theta
theta = [0, 90, 180];   // Scattering angles of photons, degree
for i = 1:3
    lambda_prime = lambda + h/(m0*c)*(1 - cosd(theta(i)));  // New wavelength due to Compton Shift, m
    printf("\nThe wavelength of X-rays scattered at %d degrees = %5.3f nm", theta(i), lambda_prime/1e-09); 
end

// Result
// The wavelength of X-rays scattered at 0 degrees = 0.150 nm
// The wavelength of X-rays scattered at 90 degrees = 0.152 nm
// The wavelength of X-rays scattered at 180 degrees = 0.155 nm 

