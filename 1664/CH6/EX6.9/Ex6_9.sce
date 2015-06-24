
//Example No.6.9.
//Page No.189.
clc;clear;
d = 0.2338;//'d' is the interplanar distance -[nm].
// (h,k,l) are the miller indices of the given plane.
h = (-1);
k = 1;
l = 1;
a = (d*sqrt(h^2+k^2+l^2));//'a' is the lattice constant
printf("\nThe lattice constant is %.4f nm",a); 
