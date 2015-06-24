// Example 4.11:Critical Radius
clc;
clear;
close;
d=0.03;//Refractive index difference
n1=1.5;//Core refractive index
h= 0.82*10^-6;//Wavelength in meters
n2=sqrt(n1^2-(2*d*n1^2));// Cladding refractive index
Rc=(3*n1^2*h)/(4*%pi*sqrt(n1^2-n2^2))*10^6;// Critical Radius in micro meters
disp(Rc,"Critical Radius in micro meters")
//answer is calculated wrong in the textbook
