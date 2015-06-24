// Example 4.3:Number of the modes
clc;
clear;
close;
format('v',6)
h= 0.85;// Wavelenght in micrometers
a= 50;// Core radius in micrometers
NA=0.17;//
v1=(2*%pi*a*NA)/h;
m2= round((v1^2)/2);
disp(m2,"Number of modes")
