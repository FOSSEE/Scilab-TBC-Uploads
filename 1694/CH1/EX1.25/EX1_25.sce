clear;
clc;
printf("\nEx1.25\n");
//page no.-35
//given
lambda=0.071*10^-9;.........//wavelength in m
h=1;
k=1;
l=0;
a=0.28*10^-9;........//lattice constant in m
n=2;.................//order

d=a/sqrt(h^2+k^2+l^2);..........//interplanar spacingin m
//by bragg's law

theta=asind((n*lambda)/(2*d)).......//angle in degrees

printf("\nangle is 21.01 degrees\n");
