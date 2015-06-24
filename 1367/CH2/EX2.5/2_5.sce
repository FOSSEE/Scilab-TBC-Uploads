//Find Ionisation Energy
//Ex:2.5
clc;
clear;
close;
e_0=8.85*10^-12;//permittivity in freee space in sqC/N/sqm
h=6.62*10^-34;//planck's constant in Js
m=9.1*10^-31;//mass of an electron in kg
e=1.6*10^-19;//charge of an electron in C
z=1;//for hydrogen
n=1;
e=m*z^2*e^4/(8*e_0^2*h^2*n^2);//ionisation energy in J
disp(e,"Ionisation Energy (in J) = ");
e1=e/(1.602*10^-19);//in eV
disp(e1,"Ionisation Energy (in eV) = ");
