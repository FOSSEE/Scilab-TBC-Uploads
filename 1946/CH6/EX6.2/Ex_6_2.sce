// Example 6.2;//optical spacing
clc;
clear;
close;
h=0.5*10^-6;//Wavelength in meter
n=1.38;//refractive index
T=1000;//tEMPERTURE IN KELVIN
q=1.3*10^4;//logitudinal modes
L=(h*q)/(2*n);// optical spacing in meter
disp(L,"optical spacing in meter")
