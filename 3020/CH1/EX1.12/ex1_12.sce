clc;
clear all;
r = 1.2e-2; // Radius of cantilever in meters
l = 1.5; // Length of cantilever in meters
Y = 19.5e10; // Youngs modulus in newton per square meters
m = 2; // Load applied in Kg
g=9.8;
w=m*g;
y = (4*w*l^3)/(3*Y*%pi*r^4);//The depression produced in the wire
disp('m',y,'The depression produced in the wire is')
