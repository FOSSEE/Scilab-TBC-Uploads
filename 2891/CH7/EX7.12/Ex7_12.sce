//Exa 7.12
clc;
clear;
close;
// given :
c=3*10^8 // speed of light in m/s
f=2 // frequency in GHz
f=2*10^9 // frequency in Hz
lambda=c/f // wavelength in m
BWFN=12 // null-to-null main beam width in degrees
 // formula : BWFN=140*(lambda/D_a)
D_a=140*lambda/BWFN // mouth diameter of paraboloid reflector in m
A=%pi*(D_a)^2/4 // Actual area in m^2
A_c=0.65*A // capture area in m^2
disp(D_a,"mouth diameter of paraboloid reflector in m:")
disp(A_c,"capture area in m^2:")
