//Caption:Find the value of generated emf
//Exa:2.7
clc;
clear;
close;
P=8;//no. of poles
A=8;
Z=760;//no.of conductors
Phy=35*10^-3;//flux in weber
N=500;//speed in rpm
E_g=(P*N*Phy*Z)/(60*A);
disp(E_g,'Value of generated emf (in volts)=')