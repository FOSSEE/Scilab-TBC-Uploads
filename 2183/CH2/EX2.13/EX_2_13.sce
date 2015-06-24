// Example 2.13:Cutoff Wavelength
clc;
clear;
close;
n1=1.48;//Waveguide Refractive Index
a=4.8;// core radius in micro meters
d= 0.0025;// Cange in core-cladding refractive index
Hc= (2*%pi*a*sqrt(2*d)*n1)/2.4;
disp(round(Hc*10^3),"Cutoff wavelength in nano meters")
//answer is wrong in the textbook
