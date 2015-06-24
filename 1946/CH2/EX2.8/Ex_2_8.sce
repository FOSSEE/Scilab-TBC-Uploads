// Example 2.8:Number of the modes
clc;
clear;
close;
n1=1.475;//Waveguide Refractive Index
n2=1.472;//Cladding Refractive Index
h1= 0.85;// Wavelenght in micrometers
a= 20;// Core radius in micrometers
NA=sqrt(n1^2-n2^2);// Numerical Aperture
v=(2*%pi*a*NA)/h1;
m1= round((v^2)/2);
h2= 1.3;// Wavelenght in micrometers
v1=(2*%pi*a*NA)/h2;
m2= round((v1^2)/2);
disp (m1, "number of modes when wavelngth is 0.85 micro meters")
disp(m2,"when wavelenght is 1.3 micro meters")
