//Exa 7.10
clc;
clear;
close;
// given :
D_a=60 // mouth diameter of paraboloid reflector in m
c=3*10^8 // speed of light in m/s
f=2 // frequency in GHz
f=2*10^9 // frequency in Hz
lambda=c/f // wavelength in m
phi=70*(lambda/D_a) // half power beam width in degrees
phi_not=140*(lambda/D_a) // null-to-null main beam width in degrees
disp(phi,"half power beam width in degrees:")
disp(phi_not,"null-to-null main beam width in degrees:")
G_p=6.4*(D_a/lambda)^2 // power gain of paraboloid
G_p=10*log10(G_p) //power gain in dB
disp(G_p,"power gain in dB:")
