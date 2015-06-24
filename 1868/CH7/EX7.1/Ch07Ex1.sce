// Scilab code Ex7.1: Pg 235 (2005)
clc; clear;
c = 3e+08;    // Velocity of light, m/s
m_e = 511e+03/(c^2);    // Mass of electron, eV
U = 3.00;    // Ground state energy neglecting E, eV
h_cross = (1.973e+03)/c;    // Reduced planck's constant, eV
alpha = sqrt(2*m_e*U)/h_cross;
L = 50;     // Thickness of the layer, angstrom
T = 1/(1+1/4*10^2/(7*3)*sinh(alpha*L)^2);
printf("\nThe transmission coefficient for the layer thickness of");
printf("\n%2d angstrom = %5.3e", L, T);
L = 10;    // // Thickness of the layer, angstrom
T = 1/(1+1/4*10^2/(7*3)*sinh(alpha*L)^2);
printf("\n%2d angstrom = %5.3e", L, T);

// Result
// The transmission coefficient for the layer thickness of
// 50 angstrom = 9.628e-39
// 10 angstrom = 6.573e-08 
