//Exa 7.2
clc;
clear;
close;
// given :
D=2 // mouth diameter of paraboloid reflector in m
c=3*10^8 // speed of light in m/s
f=5 // frequency in GHz
f=5*10^9 // frequency in Hz
lambda=c/f // wavelength in m
G=6.4*(D/lambda)^2 // power gain of paraboloid
G_p=10*log10(G) //power gain in dB
disp(G_p,"power gain in dB:")
