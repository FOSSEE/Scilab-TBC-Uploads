clc;
clear all;
h=6.626e-34;//planck's constant
me=9.1e-31; //Mass of electron in Kg
T=0;//temperature
n=8.4905e28;
Efo=(h*h/(8*me))*((3*n/%pi)^(2/3));//fermi energy at 0K in J
Efo1=Efo/(1.6e-19);//convertion into eV from J
disp('eV',Efo1,'fermi energy at 0 K');
lemda=6.82e27;
Z=lemda*sqrt(Efo1)/2;//density of states for Cu at fermi level
disp('m^-3',Z,'density of states for Cu at fermi level is:')
