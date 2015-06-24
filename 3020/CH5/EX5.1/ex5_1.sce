
clc;
clear all;
t = 1e-3; // Thickness in meters
r = 2654; // Density in Kg per cubic meters
Y = 8e10; // Youngs modulus in Newton per square meter
p=1;
f = (p/(2*t))*sqrt(Y/r);//The fundamental frquency 
disp('Hz',f,'The fundamental frquency is ')
