// Example 2.7:Number of the modes
clc;
clear;
close;
a=50;;// Radius in meter
NA=0.29;// Numerical Aperture
h=0.85;// Wavelength in meter
M=round((2*%pi^2*a^2*NA^2)/(h)^2);//
disp(M,"Number of modes")
//answer is wrong in the textbook
