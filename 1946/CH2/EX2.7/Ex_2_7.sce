// Example 2.7:Number of the modes
clc;
clear;
close;
n1=1.48;//Waveguide Refractive Index
n2=0.01;//Cladding Refractive Index
h= 0.84;// Wavelenght in micrometers
a= 25;// Core radius in micrometers
NA=(n1^2-n2^2);// Numerical Aperture
M=round((((2*%pi)/h)^2*a^2*NA)/100);//
v= round(sqrt(M*2));//
disp(v,"Number of modes")
