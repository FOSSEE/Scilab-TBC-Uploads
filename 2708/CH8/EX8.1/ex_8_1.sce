//Example 8.1 // Dielectric
clc;
clear;
//given data :
k=3;// Dielectric constant
E=1D6;// field intensity in V/m2
e=8.85D-12;// permitivity in C2/N.m2
P=e*(k-1)*E;// polarisation in C/m2
disp(P,"polarisation in C/m2")
D=k*e*E;// displacement vector in C/m2
disp(D,"Displacement in C/m2")
ED=.5*k*e*E^2;// Energy Density in Joules/m3
disp(ED,"Energy density in joules/m3")
