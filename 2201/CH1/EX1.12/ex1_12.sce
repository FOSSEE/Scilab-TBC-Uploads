// Exa 1.12
clc;
clear;
close;
// Given data
a = 3.615;// in Å
theta = 22;// in degree
n = 1;
h = 1;
k = h;
l = k;
d = a/(sqrt( ((h)^2) + ((k)^2) + ((l)^2) ));// in Å
lembda = 2*d*sind(theta);// in Å
disp(lembda,"The wavelength of X ray in Å is");
theta2 =asind( lembda/d );// in degree
theta2 = theta2 * 2;// in degree
disp(theta2,"To get the 2nd order spectrum the position of the detector in degree is"); 
