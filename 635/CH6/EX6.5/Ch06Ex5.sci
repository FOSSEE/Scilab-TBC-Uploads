// Scilab Code Ex6.5 Diffusion length of Li in Ge: Page-203 (2010)
D = 1e-010;    // Diffusion coefficient for Li in Ge, metre square per sec
t = 1*60*60;    // Time taken by diffusing Li to travel diffusion depth, sec
T = 500+273;    // absolute temperature of the system, kelvin
x = sqrt(D*t);    // Diffusion length of Li in Ge, m
printf("\nThe diffusion length of Li in Ge = %1.0e m", x);   
// Result
// The diffusion length of Li in Ge = 6e-004 m 