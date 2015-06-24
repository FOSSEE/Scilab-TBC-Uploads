// Example 4.4.a:Critical Radius
clc;
clear;
close;
d=0.03;//Refractive index difference
n1=1.5;//Core refractive index
h= 0.85*10^-6;//Wavelength in meters
x=2*n1^2*d;//
Rc=(3*n1^2*h)/(4*%pi*sqrt(x))*10^6;// Critical Radius in micro meters
disp(Rc,"Critical Radius in micro meters")
//answer is calculated wrong in the textbook
