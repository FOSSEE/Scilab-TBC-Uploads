//Find relative permeability and Intensity of magnetisation
//Ex:14.1
clc;
clear;
close;
x=1500;//susceptibility
h=2400;//mafnetic field in A/m
u_r=1+x;
disp(u_r,"relative permeability = ");
m=x*h;//in A/m
disp(m,"Intensity of magnetisation (in A/m)");
u_0=4*3.14*10^-7;
b=u_0*u_r*h;//in T
disp(b,"Remanance (in T) = ")