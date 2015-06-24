// Example 2.10.a;Core Readius
clc;
clear;
close;
n1=1.450;//Waveguide Refractive Index
n2=1.447;//Cladding Refractive Index
h= 1.3;// Wavelenght in micrometers
NA=sqrt(n1^2-n2^2);// Numerical Aperture
a= (2.405*h)/(2*%pi*NA);// Core radius
disp(a,"Core radius in micro meter")
