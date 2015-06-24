
clc;
clear all;
t = 0.7e-3; // Thickness in meters
r = 2800; // Density in Kg per cubic meters
p=1;//for fundamental frequency
Y = 8.8e10; // Youngs modulus in Newton per square meter
f = (p/(2*t))*sqrt(Y/r);//The fundamental frquency
disp('Hz',f,'The fundamental frquency is ')
