clc;
clear all;
f = 2.87e3; //Fundalmental frquency in Hz/m
r = 2660; // Density in Kg per cubic meters
Y = 4*f^2*r;//The Youngs modulus of he quartz cystal
disp('N/m^2',Y,'The Youngs modulus of he quartz cystal is ')
f1 = 1200e3; // Frequency of vibration in Hertz
t = (1/(2*f1))*sqrt(Y/r);//The thickness of the crystal
disp('m',t,'The thickness of the crystal is ')
