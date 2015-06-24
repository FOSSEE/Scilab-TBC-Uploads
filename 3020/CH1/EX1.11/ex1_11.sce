clc;
clear all;
Y = 1.025e10;// Youngs modulus in newton per square meters
b = 2e-2; //Breadth of the bar in meters
l = 1; // Length of wire in meters
d = 1e-2;// Depth of bar in meters
m = 2; // Load in Kg
g = 9.8; // Gravity constant
W=m*g;
y = (W*l^3)/(4*Y*b*d^3);
disp('m',y,'The depression  produced in the bar is')
