// Scilab Code Ex6.6 Diffusion time of Li in Ge: Page-203 (2010)
D = 1e-010;    // Diffusion coefficient for Li in Ge, metre square per sec
T = 500+273;    // Absolute temperature of the system, kelvin
x = 0.2e-03;    // Diffusion length of Li in Ge, m
// Diffusion length is given by
// x = sqrt(D*t), solving for t
t = x^2/D;    // Time taken by diffusing Li to travel diffusion depth of 0.2 mm, sec
printf("\nThe time taken by diffusing Li to travel diffusion depth of 0.2 mm = %3d s", t);   
// Result
// The time taken by diffusing Li to travel diffusion depth of 0.2 mm = 400 s 