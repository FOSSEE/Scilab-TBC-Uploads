//Find radius of first orbit of electron in Hydrogen atom
//Ex:2.4
clc;
clear;
close;
n=1;//first orbit
e_0=8.85*10^-12;//permittivity in freee space
h=6.62*10^-34;//planck's constant
m=9.1*10^-31;//mass of an electron in kg
e=1.6*10^-19;//charge of an electron in C
z=1;
r=n^2*e_0*h^2/(3.14*m*e^2*z);//radius of first orbit in m
r1=r*10^10;//radius in Angstorm
disp(r1,"Radius of first orbit of electron in Hydrogen atom (in Angstorm) = ");