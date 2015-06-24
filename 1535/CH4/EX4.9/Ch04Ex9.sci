// Scilab Code Ex4.9 : Page-94 (2010)
lambda = 550e-09;    // Wavelength of light, m
D = 20e-02;    // Diameter of objective of telescope, m
d = 6e+003;    // Distance of two points from the objective of telescope, m
theta = 1.22*lambda/D;    // Angular separation between two points, rad
x = theta*d;    // Linear separation between two points, m
printf("\nThe linear separation between two points = %5.2f mm", x/1e-03);

// Result 
// The linear separation between two points = 20.13 mm