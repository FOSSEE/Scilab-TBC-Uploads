// Scilab code Ex4.18 : Pg:157 (2008)
clc;clear;
D = 1;    // For simplicity assume the distance between the biprism and narrow slit to be unity, unit
d = 1;    // Assume half the distance between two coherent sourcesto be unity, unit
lambda = 5893;    // Mean wavelength of sodium light, angstrom
lambda1 = 5461    // Wavelength of green color, angstrom
lambda2 = 4358;    // Wavelength of violet color, angstrom
omega = lambda*D/(2*d);    // Fringe width with yellow color, unit
omega1 = lambda1*D/(2*d);    // Fringe width with green color, unit
omega2 = lambda2*D/(2*d);    // Fringe width with violet color, unit
n = 62;    // Number of fringes obtained with light from sodium lamp
// As n1*omega1 = n*omega, solving for n1
n1 = n*omega/omega1;    // Number of fringes obtained with green color 
// As n2*omega2 = n*omega, solving for n2
n2 = n*omega/omega2;    // Number of fringes obtained with violet color 
printf("\nThe number of fringes with green filter = %2d", ceil(n1));
printf("\nThe number of fringes with violet filter = %2d", ceil(n2));

// Result 
// The number of fringes with green filter = 67
// The number of fringes with violet filter = 84 
// The second answer is given wrong in the textbook