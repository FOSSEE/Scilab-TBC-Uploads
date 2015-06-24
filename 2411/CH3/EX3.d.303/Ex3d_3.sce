// Scilab Code Ex3d.3: Page-206 (2008)
clc; clear;
n = 1;    // Order of diffraction
f = 40;    // Focal length of the lens, cm
a = 0.03;    // Slit width, cm
lambda = 5890e-008;    // Wavelength of the light used, cm
// As a*sind(theta) = n*lambda, solving for theta
theta = asin(n*lambda/a);    // The angle of diffraction corresponding to the first minimum, radian
x = f*theta;    // The distance of the first dark band from the axis, cm  
printf("\nThe distance of the first dark band from the axis = %6.4f cm", x);

// Result
// The distance of the first dark band from the axis = 0.0785 cm 