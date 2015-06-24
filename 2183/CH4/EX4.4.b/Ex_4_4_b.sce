// Example 4.4.b:Critical Radius of curvature
clc;
clear;
close;
a=4;// core radius in micro meters
d=0.003;//Refractive index difference
n1=1.5;//Core refractive index
h= 1.55*10^-6;//Wavelength in meters
x=2*n1^2*d;//
hc= ((2*%pi*a*10^-6*sqrt(2*d)*n1)/2.405)*10^6;//cut off wavelength in micro meters;
x1=(20*h)/(sqrt(x));
y=((2.748-0.996*((h*10^6)/hc)))^-3;
Rcs=x1*y*10^6;
disp(Rcs,"Critical Radius of curvature in micro meters")
//answer is calculated wrong in the textbook
