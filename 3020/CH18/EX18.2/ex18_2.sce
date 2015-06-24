clc;
clear all;
Nd=1e16;//donar concentration in cm^-3
ni=1.45e10;//intrinsic carrier concentration
T=300;//temperature in kelvin
k=1.38e-23;//boltzmann constant
//let Efd-Efi=x
x=k*T*log(Nd/ni);//fermi energy with respect to Ef in J
E=x/(1.6e-19);//covertion from J to eV
disp('eV',E,'fermi energy with respect to Ef')

