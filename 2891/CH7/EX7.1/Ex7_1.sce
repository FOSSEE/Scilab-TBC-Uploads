//Exa 7.1
clc;
clear;
close;
// given :
D=2 // Diameter of paraboloid reflector in m
c=3*10^8 // speed of light in m/s
f=5 // frequency in GHz
f=5*10^9 // frequency in Hz
lambda=c/f // wavelength in m
BWFN=140*(lambda/D) // null-to-null beamwidth in degrees
HPBW=70*(lambda/D) // half power beamwidth in degrees
disp(BWFN,"null-to-null beamwidth in degrees:")
disp(HPBW,"half power beamwidth in degrees:")
