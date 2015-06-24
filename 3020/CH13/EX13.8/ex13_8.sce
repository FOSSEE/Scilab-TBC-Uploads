clc;
clear all;
a = 4.2e-10; // Lattice constant in meters
h1 = 1; //Miller indices of diffracted plane case1
k1 = 0; //Miller indices of diffracted plane case1
l1 = 1;// Miller indices of diffracted plane case1
d = a/sqrt(h1^2+k1^2+l1^2);// Lattice constant
disp('m',d,'The lattice spacing for plane (1,0,1) is')
h2 = 2; //Miller indices of diffracted plane case2
k2 = 2; //Miller indices of diffracted plane case2
l2 = 1;// Miller indices of diffracted plane case2
d = a/sqrt(h2^2+k2^2+l2^2);// Lattice constant
disp('m',d,'The lattice spacing for plane (2,2,1) is')
