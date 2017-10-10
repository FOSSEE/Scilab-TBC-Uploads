clear;
clc;
printf("\nEx-6.2\n");
//page no.-184
//given
no=5.8*10^28;......//free electrons per m^3
e=1.6*10^-19;......//charge in C
h= 1.05*10^-34;.....//planck's constant in Js

m=9.1*10^-31;.......//mass of electron in kg

E=(3*no*%pi^2)^(2/3)*(h^2)/(2*m*e)......//fermi energy of electron

printf("\nfermi energy of electron is 5.4 eV\n");

v=((2*E)/m)^(1/2);......//speed of electron in m/s

printf("\nspeed of electron is 1.4*10^6 m/s");
