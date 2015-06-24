//Example 3.19 : spacing
clc;
clear;
close;
//given data :
h1=2;
k1=0;
l1=0;
h2=2;
k2=2;
l2=0;
h3=1;
k3=1;
l3=1;
r=1.246;
a=(4*r)/sqrt(2);// in angstrum
//d=a/sqrt(h^2+k^2+l^2)
d1=a/sqrt(h1^2+k1^2+l1^2);
d2=a/sqrt(h2^2+k2^2+l2^2);
d3=a/sqrt(h3^2+k3^2+l3^2);
disp(d1,"d_200 spacind,d1(angstrom) = ")
disp(d2,"d_220 spacind,d2(angstrom) = ")
disp(d3,"d_111 spacind,d3(angstrom) = ")
