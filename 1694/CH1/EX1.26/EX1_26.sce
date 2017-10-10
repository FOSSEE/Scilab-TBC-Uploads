clear;
clc;
printf("\nEx1.26\n");
//page no.-35
//given
lambda=3*10^-10;.........//wavelength in m
h=1;
k=0;
l=0;
theta=40;..............//glancing angle in degrees
n=1;....................//order
//from bragg's law

d=(n*lambda)/(2*sind(theta));........//interplanar spacing in m

a=d*sqrt(h^2+k^2+l^2);..............//lattice constant in m

V=a^3.......................//volume of unit cell in m

printf("\nvolume of unit cell is 1.27*10^-29 m^3\n");
