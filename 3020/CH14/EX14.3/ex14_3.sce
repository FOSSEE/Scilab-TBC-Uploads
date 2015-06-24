clc;
clear all;
m = 1.675e-27; // Mass of an nueton in Kg 
h = 6.626e-34; // Planck's constant 
e = 1.609e-19; // Charge of an electron in culoumb
E = 10e3*e; // Energy of an electron in Joule
lambda = h/(sqrt(2*m*E));//The de-broglie wavelength  
disp('m',lambda,'The de-broglie wavelength is')
// Slight variation in answer than textbook
