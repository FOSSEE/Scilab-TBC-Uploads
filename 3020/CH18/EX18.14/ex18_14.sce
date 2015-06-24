clc;
clear all;
Eg=0.3;//fermi level in eV
//Ni300=Nc*exp(Ec-Ef300/k*T) so..
//Ni300=Nc*exp(-Eg*1.6e-19/k*T)
//and //Ni330=Nc*exp(-(Ec-Ef300)/k*T) so..
//exp(Ec-Ef300/k*T)=exp(-(Ec-Ef300)/k*T) so..
//let Ec-Ef300=x
x=Eg*330/300;//fermi energy lies at
disp('eV',x,'fermi energy lies at:')

