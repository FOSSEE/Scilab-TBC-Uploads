clc;
clear all;
NA = 0.24;//Numerical Aperture
delta = 0.014;
n1 = (NA)/sqrt(2*delta);//Refractive index of first medium 
disp('',n1,'Refractive index of first medium is ');
n2 = n1 - (delta*n1);//Refractive index of secong material
disp('',n2,'Refractive index of secong material is ');
