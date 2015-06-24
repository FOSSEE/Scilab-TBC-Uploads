//Exa 7.7
clc;
clear;
close;
// given :
D_a=6 // Diameter of paraboloid reflector in m
c=3*10^8 // speed of light in m/s
f=4 // frequency in GHz
f=4*10^9 // frequency in Hz
lambda=c/f // wavelength in m
r=2*D_a^2/lambda // required minimum distance between two antennae in m
disp(r,"required minimum distance between two antennae in m:")  
