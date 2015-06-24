// Scilab Code Ex12.10 : Page-608 (2011)
clc; clear;
e = 1.6e-19;....// Charge on anlectron, C
m = 9.1e-31;....// Mass of the electron, kg
r = 5.1e-11;....// Radius of the electronic orbit, m
B = 2.0;....// Applied magnetic field, weber per metre-square
delta_pm = e^2*r^2*B/(4*m);
printf("\nThe change in the magnetic dipole moment of the electron = %3.1e A-metre square", delta_pm);

// Result
// The change in the magnetic dipole moment of the electron = 3.7e-29 A-metre square 
