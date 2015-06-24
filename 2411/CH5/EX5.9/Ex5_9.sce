// Scilab Code Ex5.9: Page-287 (2008)
clc; clear;
h = 6.62e-034;    // Planck's constant, Js
c = 3e+008;    // Speed of light, m/s
e = 1.6e-019;    // Energy quivalent of 1 eV, J
phi = 2.1*e;    // Work function for material, J
lambda = 3500e-010;    // Wavelength of incident UV radiation, m
E = 1e-004;    // Energy incident per sec on 1 Sq. cm of potassium surface, J
eta = 0.5/100;    // Efficiency of potassium surface
KE = (h*c/lambda-phi)/e;    // Maximum kinetic energy of the ejected photoelectrons, eV
N = eta*E/(KE*e);    // Number of photoelectrons emitted per second per Sq. cm of potassium surface
printf("\nThe maximum kinetic energy of the incidnt radiation = %4.2f eV", KE);
printf("\nThe number of photoelectrons emitted per second per Sq. cm of potassium surface = %4.2e", N);

// Result
// The maximum kinetic energy of the incidnt radiation = 1.45 eV
// The number of photoelectrons emitted per second per Sq. cm of potassium surface = 2.16e+012 