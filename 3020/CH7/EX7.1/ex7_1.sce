clc;
clear all;
lambda = 6000e-10; //Wavelength of light used in meters
b = 1e-3; //Frindge width in meters
theta = lambda/(2*b);//The exposure time
disp('radian',theta,'The exposure time is')
//Wrong answer printed in textbook... checked in calculator also..
