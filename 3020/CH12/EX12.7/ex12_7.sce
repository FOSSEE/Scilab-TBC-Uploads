clc;
clear all;
delta = 0.012; // Relative refractive index
NA = 0.22;// Numerical Aperture
n1 = NA/(sqrt(2*delta)); //The refractive index of core
n2 = n1*(1-delta); // The refractice index of cladding
disp('',n1,'The refractive index of core is')
disp('',n2,'The refractive index of cladding is')
