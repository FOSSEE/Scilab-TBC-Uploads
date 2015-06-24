// Exa 1.21.5
clc;
clear;
close;
// Given data
a = 2.814;// in Å
h = 1;
k = 0;
l = 0;
d = a/(sqrt( ((h)^2) + ((k)^2) + ((l)^2) ));// in Å
n = 2;
lembda = 0.710;// in Å
//Formula 2*d*sin(theta) = n*lembda;
theta = asind(n*lembda/(2*d) );// in degree
disp(theta,"The glacing angle in degree is");
