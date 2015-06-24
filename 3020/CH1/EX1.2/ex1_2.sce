clc;
clear all;
Y = 2e11 // Young's modulus in newton per square meter
l = 2.75 // Length of wire in meters
d = 1e-3 // Diameter of wire in meter
r = (d/2); // Radius of wire
M = 1 // Applied load in kilogram
g = 9.8 // Acceleration due to gravity
T = M*g; // Tensile force
deltal = (T*l)/(%pi*r*r*Y);//Increase in length of wire
disp('m',deltal,'Increase in length of wire is')
// Variation in answer.. there is mistake in the book..checked in calculator also..

