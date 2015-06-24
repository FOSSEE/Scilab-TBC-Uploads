//Exa 6.1
clc;
clear;
close;
//given :
f=30 // frequency in MHz
f=30*10^6 // frequency in Hz
c=3*10^8 // speed of light in m/s
lambda=c/f // wavelength in meter
Delta=30 // angle of elevation in Degrees
H=lambda/(4*sind(Delta)) // Rhombic height in m
phi=90-Delta // tilt angle in Degrees
l=lambda/(2*(cosd(phi)^2)) // wire length in m
disp(H," Rhombic height in m:")
disp(phi,"Tilt angle in Degrees:")
disp(l,"length of wire in meter:")
