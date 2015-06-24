clc();
clear;
//To determine spacing of (111) planes in a monoatomic fcc structure
h=1;
k=1;
l=1;
//d(hkl)=a/sqrt(h^2+k^2+l^2)where "a" is the lattice parameter
r=0.18;     //atomic radius in nm
d(111)=(2*sqrt(2)*r)/sqrt((h^2)+(k^2)+(l^2))
printf("The spacing of (111) planes in a monoatomic structure with atomic radius 0.18 nm is %f nm",d(111));
