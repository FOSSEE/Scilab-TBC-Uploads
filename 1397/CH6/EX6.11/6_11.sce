//clc();
clear;
//To calculate the glancing angle
lambda=0.071*10^-9;        //wavelength in m
//miller indices of diffraction plane
h=1;
k=1;
l=0;
a=0.28*10^-9;         //lattice constant in m
n=2;
d=a/sqrt((h^2)+(k^2)+(l^2));
disp(d);
theta=asind((n*lambda)/(2*d));
printf("glancing angle in degrees is");
disp(theta);
