clc;
clear all;
l = 2 ; // Length in meters
a = 6.25e-5; // Cross Sectional area in square meter inverse
deltal = 3e-3; // Increase in length in meters
f = 1e3; // Tension in Newtons
Y = (f*l)/(a*deltal); // Young's modulus
disp('N/m^2',Y,'The youngs modulus of the wire is');
// Slight variation in answer.. there is mistake in the book..checked in calculator also..

