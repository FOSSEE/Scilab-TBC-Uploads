// Chapter 2 example 5
clc;
clear;

// Variable declaration
a   = 3*10^-10;             // side of 2d square lattice in m
h   = 6.63*10^-34;          // plancks constant in J.s
e   = 1.6*10^-19           // charge of electron in coulombs
m   = 9.1*10^-31;           // mass of electron in kg

// calculations
//p   = h*k                   // momentum of the electron
k   = %pi/a;                  // first Brillouin zone
p   = (h/(2*%pi))*(%pi/a);          //momentum of electron
E   = (p^2)/(2*m*e)               // Energyin eV

// Result
mprintf('Electron Momentum for first Brillouin zone appearance = %g\n Energy of free electron with this momentum = %4.1feV',p,E);
mprintf(" \n Note: in Textbook Momentum value is wrongly printed as 1.1*10^-10')
