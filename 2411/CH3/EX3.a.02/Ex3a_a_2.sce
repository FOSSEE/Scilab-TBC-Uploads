// Scilab Code Ex3a.a.2: Page-132 (2008)
clc; clear;
m = 10;    // Mass of the particle, g
x = poly(0, 'x');
V = 50*x^2 + 100;    // Potential field surrounding the particle, erg/g
U = m*V;    // Potential energy of the particle field system, erg
F = -derivat(U);    // Force acting on the particle, dyne
// As F = -m*a = -m*omega^2*x = -m*(2%pi*f)^2*x, solving for f
f = sqrt(eval(pol2str(-pdiv(F,x)/m)))/(2*%pi);    // Frequency of oscillations of the particle executing SHM, Hz
printf("\nThe frequency of oscillations of the particle executing SHM = %4.2f Hz", f);

// Result
// The frequency of oscillations of the particle executing SHM = 1.59 Hz 