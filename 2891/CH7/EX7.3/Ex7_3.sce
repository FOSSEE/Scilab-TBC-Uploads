//Exa 7.3
clc;
clear;
close;
// given :
D_a=0.15 // mouth Diameter of paraboloid in m
c=3*10^8 // speed of light in m/s
f=10 // frequency in GHz
f=10*10^9 // frequency in Hz
lambda=c/f // wavelength in m
BWFN=140*(lambda/D_a) // null-to-null beamwidth in degrees
HPBW=70*(lambda/D_a) // half power beamwidth in degrees
disp(BWFN,"null-to-null beamwidth in degrees:")
disp(HPBW,"half power beamwidth in degrees:")
G_p=6.4*(D_a/lambda)^2 // power gain of paraboloid
G_p=10*log10(G_p) // power gain in dB
disp(G_p,"power gain in dB")
