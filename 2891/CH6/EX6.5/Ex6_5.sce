//Exa 6.5
clc;
clear;
close;
// given :
f=20 //ferquency in MHz
f=20*10^6 //frequency in Hz
c=3*10^8 //speed of light in m/s
K=0.74 // constant
lambda=c/f //wavelength in meter
Delta=20 // angle of elevation in Degrees
H=lambda/(4*sind(Delta)) // Rhombic height in m
phi=90-Delta // tilt angle in Degrees
l=(lambda/(2*(cosd(phi)^2)))*K // wire length in m
disp(H,"Rhombic height in m:")
disp(phi,"Tilt angle in Degrees:")
disp(l,"length of wire in meter:")
