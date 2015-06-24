//Exa6.10
clc;
clear;
close;
//given :
D=0.5 // diameter of loop antenna in m
a=D/2 // radius of loop antenna in m
f=1 // frequency in MHz
f=1*10^6 // frequency in Hz
c=3*10^8 // speed of light in m/s
lambda=c/f // wavelength in m
Rr=3720*(a/lambda) // radiation resistance of loop antenna in ohm
disp(Rr,"radiation resistance of loop antenna in ohm:")
