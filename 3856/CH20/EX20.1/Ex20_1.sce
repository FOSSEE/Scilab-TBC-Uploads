//To Calculate the smallest Diffraction Angle

//Example 20.1

clc;

clear;

a=2.6*10^-10;//Edge Length of Cubic Lattice

h=1;//Miller Indice h

k=1;//Miller Indice k

l=1;//Miller Indice l

lambda=1.542*10^-10;//Wavelength of light

theta=asin(lambda*sqrt(h^2+k^2+l^2)/(2*a))*180/%pi;

printf("Smallest Diffraction Angle=%.1f degrees",theta);
