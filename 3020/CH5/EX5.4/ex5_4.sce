clc;
clear all;
t = 10e-2; // Thickness in meters
r = 8.1e3; // Density in Kg per cubic meters
Y = 8.2e11; // Youngs modulus in Newton per square meter
f = (1/(2*t))*sqrt(Y/r);
disp('Hz',f,'The frquency of produced ultrasonic waves by nickel is ')
