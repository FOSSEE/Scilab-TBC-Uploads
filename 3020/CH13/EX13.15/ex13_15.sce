clc;
clear all;
a = 4.938e-10; // Lattice constant in meters
h = 2; //Miller indices of diffracted plane 
k = 2; //Miller indices of diffracted plane
l = 0;// Miller indices of diffracted plane
d = a/sqrt(h^2+k^2+l^2);// Lattice constant
disp('m',d,'The lattice spacing for plane (2,2,0) is')
