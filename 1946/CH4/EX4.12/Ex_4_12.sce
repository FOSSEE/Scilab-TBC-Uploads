// Example 4.11:Critical Radius
clc;
clear;
close;
d=0.003;//Refractive index difference
a=4;// core radius in micro meters
n1=2;//Core refractive index
h= 1.55*10^-6;//Wavelength in meters
n2=sqrt(n1^2-(2*d*n1^2));// Cladding refractive index
hc= ((2*%pi*a*10^-6*sqrt(2*d)*n1)/2.405)*10^6;//cut off wavelength in micro meters;
x=(20*h)/(sqrt(n1-1.75));
y=((2.748-0.996*(h*10^6/hc)))^-3;
Rcs=x*y*10^6;
disp(Rcs,"Critical Radius in micro meters")
