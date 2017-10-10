clear;
clc;
printf("\nEx1.30\n");
//page no.-38
//given
V=854;.............//accelerated voltage in volt
theta=56;.........//angle
n=1;..............//order
m=9.1*10^-31;......//mass of electron
e=1.6*10^-19;.....//charge
h=6.625*10^-34;...//planck constant

lambda=h/sqrt(2*m*e*V).........//wavelength in m
//Now by bragg's law

d=(n*lambda)/(2*sind(theta))......//interplanar spacing in m

printf("\nspacing is 2.53*10^-11 m\n");
