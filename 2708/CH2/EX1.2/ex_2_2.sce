//Example 2.2 // Wavelength of light
clc;
clear;
//given data :
a=.2D-3;//slit width in m
D=2;// screen is placed at distance in m
x=5D-3;// first minima lies at distance to central maxima
w=(a*x)/D;// wavelength of light in m
w=w*1D10;// to convert in A
disp(w,"wavelength of light used in A")


