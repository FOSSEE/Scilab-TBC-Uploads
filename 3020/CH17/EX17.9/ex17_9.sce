clc;
clear all;
h=6.626e-34;//planck's constant
m=9.1e-31;//mass of electron
n=18.1e28;//electron density of aluminium
Efo=(h*h/(2*m))*((3*n/(8*%pi))^(2/3));//fermi energy at 0K
Efo1=Efo/(1.6e-19);//conversion into eV from J
disp('eV',Efo1,'fermi energy at 0 K');
