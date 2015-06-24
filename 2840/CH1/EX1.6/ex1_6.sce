clc;
clear all;
l = 0.4 // Length in meter
A = 240e-4 // Area of slab in meter square
F = 1e5 // Shaering force in newton
n = 5.6e9 // Shear modulus in pa
deltal = (F*l)/(n*A);
disp('m',deltal,'The displacement is ')
