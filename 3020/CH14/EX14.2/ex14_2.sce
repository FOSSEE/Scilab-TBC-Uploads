clc;
clear all;
m = 9.11e-31; // Mass of an atom in Kg 
h = 6.626e-34; // Planck's constant 
e = 1.609e-19; // Charge of an electron in columb
E = 100*e; // Energy of an electron in Joule
lambda = h/(sqrt(2*m*E));//The de-broglie wavelength  
disp('m',lambda,'The de-broglie wavelength is')
// Slight vartiation in answer than textbook
