
//Example No.6.14.
//Page No.191.
//To find interplanar distance.
clc;clear;
// (h,k,l) are the miller indices of the given lattice plane (212).
h = 2;
k = 1;
l = 2;
a = 2.04;//Lattice constant -[A].
d = (a/sqrt(h^2+k^2+l^2));
printf("\nThe interplanar distance is %.2f A",d);
