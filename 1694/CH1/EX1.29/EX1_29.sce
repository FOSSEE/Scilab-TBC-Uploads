clear;
clc;
printf("\nEx1.29\n");
//page no.-37
//given
n=1;..........//order
theta=27.5;....//angle in degrees
h=1;
k=1;
l=1;
a=5.63*10^-10;......//lattice constant in m
h=6.625*10^-34;.....//planck's constant
c=3*10^10;...........//speed in m/sec
d=a/sqrt(h^2+k^2+l^2)..........//interplanar spacingin m
//by bragg's law

lambda=(2*d*sind(theta))/n......//wavelength in m

printf("\nwavelength is 3 angstrom\n");

E=h*c/lambda..........//energy of x-ray beam in joule
//to covert in eV divide by 1.6*10^-19

printf("\nenergy of X-ray beam is 3379.18 eV\n");
