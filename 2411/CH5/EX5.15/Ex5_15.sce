// Scilab Code Ex5.15: Page-292 (2008)
clc; clear;
h = 6.6e-034;    // Planck's constant, Js
// For golf ball
m = 0.046;    // Mass of the golf ball, kg
v = 36;    // Velocity of the golf ball, m/s
lambda = h/(m*v);    // de-Broglie wavelength associated with the moving golf ball, m
printf("\nThe de-Broglie wavelength associated with the moving golf ball = %1.0e m", lambda);
if lambda/1e-010 > 0.1 then
    printf("\nThe moving golf ball may exhibit wave character.");
end
// For an electron
m = 9.11e-031;    // Mass of the electron, kg
v = 1e+007;    // Velocity of the electron, m/s
lambda = h/(m*v);    // de-Broglie wavelength associated with the moving electron, m
printf("\nThe de-Broglie wavelength associated with the moving electron = %3.1e m", lambda);
if lambda/1e-010 > 0.1 then
    printf("\nThe moving electron may exhibit wave character.");
end

// Result
// The de-Broglie wavelength associated with the moving golf ball = 4e-034 m
// The de-Broglie wavelength associated with the moving electron = 7.2e-011 m
// The moving electron may exhibit wave character. 