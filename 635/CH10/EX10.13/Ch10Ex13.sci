// Scilab Code Ex 10.13 Thermionic emission of a filament: Page-352 (2010)
e = 1.6D-19;    // Electronic charge, C
m = 9.1D-31;    // Mass of the electron, kg
k = 1.38D-23;   // Boltzmann constant, J/mol-K
h = 6.626D-34;    // Plank's constant, Js
W = 4.5;    // Work function of tungsten filament, eV
D = 1D-4;    // Diameter of the filament, m
r = D/2;    // Radius of the filament, m
T = 2400;    // Temperature of the filament, K
l = 0.05;    // Length of the filament, m
A =  4*%pi*e*m*k^2/h^3;     // A constant expressed in ampere per metre square 
                            // per kelvin square
a = 2*%pi*r*l;         // Surface area of the filament, meter square
J = A*T^2*exp(-e*W/(k*T));    // Electronic current density of the filament, 
                            // ampere per metre square
I = a*J;    // Electric current due to thermionic emission, ampere
disp(I,"The electric current due to thermionic emission, in A, is : ");
// Result
// The electric current due to thermionic emission, in A, is :
//     0.0392404
