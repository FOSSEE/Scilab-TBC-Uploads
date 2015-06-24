// Example 2.6:Core Diameter
clc;
clear;
close;
n1=1.55;//Waveguide Refractive Index
n2=1.48;//Cladding Refractive Index
h= 1.55;// Wavelenght in micrometers
NA=sqrt(n1^2-n2^2);// Numerical Aperture
a= (2.405*h)/(2*%pi*NA);// Core radius
d=2*a;// Core Diameter
disp(d,"Core Diameter in micro meter")
