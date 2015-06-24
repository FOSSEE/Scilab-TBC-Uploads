//Exa 7.5
clc;
clear;
close;
// given :
c=3*10^8 // speed of light in m/s
f=5 // frequency in GHz
f=5*10^9 // frequency in Hz
lambda=c/f // wavelength in m
BWFN=10 // null-to-null beamwidth in degrees
// formula: BWFN=140*(lambda/D_a)
D_a=140*lambda/BWFN // mouth Diameter of paraboloid reflector in m
disp(D_a,"mouth Diameter of paraboloid reflector in m:")
HPBW=70*(lambda/D_a) // half power beamwidth in degrees
disp(HPBW,"half power beamwidth in degrees:")
G_p=6.4*(D_a/lambda)^2 // power gain of paraboloid
disp(G_p,"power gain of paraboloid:")
