// Example 2.13.a:Normaised Frequency
clc;
clear;
close;
n1=1.48;//Waveguide Refractive Index
d= 0.015;// Cange in core-cladding refractive index
a=40;// core radius in micro meters
h=0.85;//wavelngth in micro meters
v=(2*%pi*a*n1*sqrt(2*d))/h;//Normalised wavelngth
disp(v,"normalised frequency ")
