//Exa 7.8
clc;
clear;
close;
// given :
G_p=1000 // gain
c=3*10^8 // speed of light in m/s
f=3 // frequency in GHz
f=3*10^9 // frequency in Hz
lambda=c/f // wavelength in m
// formula : G_p=6.4*(D_a/lambda)^2 // power gain
D_a=lambda*(sqrt(G_p/6.4)) // mouth Diameter of paraboloid in m
BWFN=140*(lambda/D_a) // null-to-null beamwidth in degrees
HPBW=70*(lambda/D_a) // half power beamwidth in degrees
disp(D_a,"mouth Diameter of paraboloid in m")
disp(BWFN,"null-to-null beamwidth in degrees:")
disp(HPBW,"half power beamwidth in degrees:")
