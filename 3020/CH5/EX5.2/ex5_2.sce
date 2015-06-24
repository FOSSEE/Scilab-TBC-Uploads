
clc;
clear all;
t = 0.5e-2; // Thickness in meters
r = 2650; // Density in Kg per cubic meters
p=1;//for fundamental vibration
Y = 7.9e10; // Youngs modulus in Newton per square meter
f = (p/(2*t))*sqrt(Y/r);//The fundamental frquency
disp('Hz',f,'The fundalmental frquency is ')
