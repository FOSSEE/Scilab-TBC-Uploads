// Example 2.14.b:Maximum Core Readius
clc;
clear;
close;
n1=1.48;//Waveguide Refractive Index
d= 0.01;// Cange in core-cladding refractive index
a=2;// parabolic refractive index
h=1.3;//wavelngth in micro meters
v= 2.4*sqrt(1+(2/a));//maximum value of normalised frequence
a= (v*h)/(2*%pi*n1*sqrt(2*d));//Core Radius
disp(a,"maximum core radius in micro meters")

