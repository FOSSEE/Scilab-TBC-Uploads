// Example 2.9:Maximum Core Readius
clc;
clear;
close;
n1=1.55;//Waveguide Refractive Index
n2=1.52;//
d= n1-n2;// Cange in core-cladding refractive index
h=1550;//wavelngth in nano meters
a=((2.405*h*10^-9)/(2*%pi*sqrt(n1^2-n2^2)));//Core Radius
disp(a*10^6,"maximum core radius in micro meters")

