clc;
clear all;
d = 0.6e-3; // Diameter in meters
r = d/2; // Radius of wire in meter
deltal = 1e-3; // Length of elongation produced in meters
m = 0.16*1e-3; // Mass in Rg
angt = 1; // Angular twist in radian
T = 10e-4; //Torque in Newton
g = 9.8; // Gravitational Constant
n = 2.34e9; // Rigidity modulus in mewton per square meters
Y = (m*g)/(%pi*r*r*deltal);
disp('',Y);
sigma = (Y/(2*n))-1
disp(' ',sigma,'The poisssons ratio is')
// Wrong answer printed in textbook... Checked in calculator also... 
