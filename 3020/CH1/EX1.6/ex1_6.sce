clc;
clear all;
l = 3; // Length of copper wire
y  = 10e10; // Young's modulus in newton per square meter
r = 5e-4; // Radius in meters
d = r*2; // Diameter
sigma = 0.26; // Poisson's Ratio
g = 9.8; // Gravitational Constant
M = 10; // Load in Kg
deltal = (M*g*l)/(%pi*r*r*y);
lt = sigma*(deltal/l); // Lateral strain
lc = lt*d;// Lateral Compression
disp('m',lc,'Lateral Compression produced is')
