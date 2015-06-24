clc;
clear all;
a = 1; // Lattice constant in meters suppose
h1 = 1; //Miller indices of diffracted plane case1
k1 = 0; //Miller indices of diffracted plane case1
l1 = 0;// Miller indices of diffracted plane case1
d1 = a/sqrt(h1^2+k1^2+l1^2);// Lattice constant
h2 = 1; //Miller indices of diffracted plane case2
k2 = 1; //Miller indices of diffracted plane case2
l2 = 0;// Miller indices of diffracted plane case2
d2 = a/sqrt(h2^2+k2^2+l2^2);// Lattice constant
h3 = 1; //Miller indices of diffracted plane case3
k3 = 1; //Miller indices of diffracted plane case3
l3 = 1;// Miller indices of diffracted plane case3
d3 = a/sqrt(h3^2+k3^2+l3^2);// Lattice constant
disp(' ',[d1,d2,d3],'The ratio of d(1,0,0):d(1,1,0):d(1,1,1)) is')
