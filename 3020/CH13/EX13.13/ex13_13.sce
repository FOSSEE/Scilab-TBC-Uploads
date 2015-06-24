clc;
clear all;
a = 4.12e-10; // Lattice constant in meters
h1 = 1; //Miller indices of diffracted plane case1
k1 = 1; //Miller indices of diffracted plane case1
l1 = 1;// Miller indices of diffracted plane case1
d = a/sqrt(h1^2+k1^2+l1^2);// Lattice constant
disp('m',d,'The lattice spacing for plane (1,1,1) is')
h2 = 1; //Miller indices of diffracted plane case2
k2 = 1; //Miller indices of diffracted plane case2
l2 = 2;// Miller indices of diffracted plane case2
d = a/sqrt(h2^2+k2^2+l2^2);// Lattice constant
disp('m',d,'The lattice spacing for plane (1,1,2) is')
h3 = 1; //Miller indices of diffracted plane case3
k3 = 2; //Miller indices of diffracted plane case3
l3 = 3;// Miller indices of diffracted plane case3
d = a/sqrt(h3^2+k3^2+l3^2);// Lattice constant
disp('m',d,'The lattice spacing for plane (1,2,3) is')
