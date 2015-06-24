// Example 2.15:Cutoff Wavelengt
clc;
clear;
close;
n1=1.46;//Waveguide Refractive Index
a=4.5;// core radius in micro meters
d= 0.0025;// Cange in core-cladding refractive index
Hc= (2*%pi*a*sqrt(2*d)*n1)/2.405;
disp(Hc,"Cutoff wavelenght in micro meters")
