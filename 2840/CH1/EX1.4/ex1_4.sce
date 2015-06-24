clc;
clear all;
change = 0.01/100;
h = 1e5; // Height
rho = 1 // Density of water in gm per cm square
g = 980 // Gravity constant in am per square cm
deltap = h*g*rho;
k = deltap/change;
disp('dyne cm^-2',k,'Bulk modulus of sphere is ')
