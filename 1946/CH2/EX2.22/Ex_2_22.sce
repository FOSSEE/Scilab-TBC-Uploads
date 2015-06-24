// Example 2.22:Thickness
clc;
clear;
close;
n1=3.6;//Core Refractive Index
n2=3.56;//Cladding Refractive Index
h=0.85;// wavelenght in micro meter
m=1;// mode is fundamental TE10
n=0;
Vc=2.405;//Cutoff wavelength
a=(Vc*h)/(2*%pi*sqrt(n1^2-n2^2));// Core radius 
disp(a,"Core radius in mircometers")
