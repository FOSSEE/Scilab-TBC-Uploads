clear;
clc;
printf("\nEx1.32\n");
//page no.-39
//given
V=5000;........//potential diff. in volt
n=1;...........//order
h=1;
k=1;
l=1;
d=0.204*10^-9;.....//interplanar spacing in m
m=9.1*10^-31;......//mass of electron
e=1.6*10^-19;.....//charge
h=6.625*10^-34;...//planck constant

lambda=h/sqrt(2*m*e*V).........//wavelength in m
//Now by bragg's law

theta=asind((n*lambda)/(2*d))......//angle in degrees

printf("\nangle is 2.43 degrees\n");
