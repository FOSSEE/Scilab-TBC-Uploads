// Scilab Code Ex4.9a: Page-141 (2006)
clc; clear;
m = 9.1e-031;   // Mass of the electron, kg
h = 6.626e-034; // Planck's constant, Js
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
h_cross = h/(2*%pi);    // Reduced Planck's constant, Js
s = 0.01;   // Side of the box, m
E = 2;  // Energy range of the electron in the box, eV
V = s^3;    // Volume of the box, metre cube
I = integrate("E^(1/2)", 'E', 0, 2);    // Definite integral over E
D_E = V/(2*%pi^2)*(2*m/h_cross^2)^(3/2)*I*e^(3/2);  // Density of states for the electron in a cubical box, states
printf("\nThe density of states for the electron in a cubical box = %5.3e states", D_E);

// Result 
// The density of states for the electron in a cubical box = 1.280e+022 states 
