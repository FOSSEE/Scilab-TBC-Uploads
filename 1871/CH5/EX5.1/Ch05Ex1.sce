// Scilab code Ex5.1: Pg:200 (2008)
clc;clear;
a = 300;    // Distance between narrow slit and straight edge, cm
b = 600;    // Distance between straight edge and screen, cm
Lambda = 4900e-08;    // Wavelength of light, cm
// For n = 1
n = 1;
x_1 = sqrt(b*(a + b)*Lambda/a)*sqrt(2*n);    // Distance of Ist minimum outside the geometrical shadow
// For n = 4
n = 4;
x_4 = sqrt(b*(a + b)*Lambda/a)*sqrt(2*n);    // Distance of fourth minimum outside the geometrical shadow
x = x_4 - x_1;    // Distance between first and fourth band, cm
printf("\nThe distance between the first and fourth band = %4.2f cm", x);

// Result 
// The distance between the first and fourth band = 0.42 cm 