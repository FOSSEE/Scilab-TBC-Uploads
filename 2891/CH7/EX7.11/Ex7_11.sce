//Exa 7.11
clc;
clear;
close;
// given :
D=22 // mouth diameter of paraboloid reflector in m
c=3*10^8 // speed of light in m/s
f=5 // frequency in GHz
f=5*10^9 // frequency in Hz
lambda=c/f // wavelength in m
b=0.6 // illumination efficiency
G_p=b*(D/lambda)^2 // power gain of paraboloid
G_p=10*log10(G_p) //power gain in dB
disp(G_p,"power gain in dB:")
