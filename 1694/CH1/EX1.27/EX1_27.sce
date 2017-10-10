clear;
clc;
printf("\nEx1.27\n");
//page no.-36
//given
n=1;.....................//order
lambda=0.82*10^-10;......//wavelength in m
a=3*10^-10;.............//lattice constant
theta=75.86;............//angle in degrees
//from bragg's law

d=(n*lambda)/(2*sind(theta))........//interplanar spacing in m

//by formula, sqrt(h^2+k^2+l^2)=a/d...miller indices can be found

printf("\nmiller indices are (001),(010),(100)\n");
