clc;
clear all;
l = 1.5; //Length of wire in meters
r = 80e-3; // Radius of cylindrical shaft in meters
n = 93e9;// Rigidity modulus in Newton per square meters
r1 = 60e-3; // Inner radius of hollow shaft
r2 = 100e-3; // Outer radius of hollow shaft
phi = (%pi/300); // angle of twisting 0.6 degrees in radian
c = (%pi^2*n*r^4)/(2*l*300);
C = (%pi^2*n*(r2^4-r1^4))/(600*l);
disp('N.m',c,'The twisting on a solid cylindrical shaft is') 
disp('N.m',C,'The twisting on a hollow cylindrical shaft is')
//mistake in book.. checked in caluculator also.. slight variation in the answer..
