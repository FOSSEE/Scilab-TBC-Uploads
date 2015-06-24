clc;
clear all;
a = 1e-10 // Width of box in meter
m = 9.1e-31; // Mass of electron in kg
h = 6.62e-34; // Planck's constant in Js
c = 3e8; // Velocity of light in vaccum
n = 1; // Single electron
E = (n^2 * h^2)/(8*m*a^2*1.6e-19);
disp('eV',E,'Energy of electron n^2*');
