//Exa 7.13
clc;
clear;
close;
// given :
c=3*10^8 // speed of light in m/s
f=2.5 // frequency in GHz
f=2.5*10^9 // frequency in Hz
lambda=c/f // wavelength in m
BWFN=3 // null-to-null main beam width in degrees
 // formula : BWFN=140*(lambda/D_a)
D_a=140*lambda/BWFN // mouth diameter of paraboloid reflector in m
G=6.4*(D_a/lambda)^2 // power gain of paraboloid
G_p=10*log10(G) //power gain in dB
disp(G_p,"power gain in dB:")
disp(D_a,"mouth diameter of paraboloid reflector in m:")
