// Example 4.14:Wavelength
clc;
clear;
close;
Rc=84;// Critical Radius in micro meters
n2=1.45;//Cladding refrative index
n1=1.46;//Core refractive index
h=(Rc*10^-6*4*%pi*sqrt(n1^2-n2^2))/(3*n1^2)*10^6;// Wavelength in micro meters
disp(h,"Wavelength in micro meters")
//answer is calculated wrong in the textbook
