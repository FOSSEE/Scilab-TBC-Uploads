// Exa 1.21.8
clc;
clear;
close;
// Given data
a = 3.615;// in Å
theta = 22;// in degree
n = 1;
h = 1;
k = 1;
l = 1;
d = a/(sqrt( ((h)^2) + ((k)^2) + ((l)^2) ));// in Å
// 2*d*sin(theta) = n*lembda;
lembda = 2*d*sind(theta);// in Å
disp(lembda,"The wavelength in Å is");
n = 2;
//Formula 2*d*sin(theta) = n*lembda;
theta = asind(n*lembda/(2*d) );// in degree
disp(theta,"The glacing angle for second order in degree is");
disp("To get the 2nd order spectrum the position of the detector should be "+string(2*theta)+" °")
