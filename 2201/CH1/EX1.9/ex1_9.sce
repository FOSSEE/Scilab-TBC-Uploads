// Exa 1.9
clc;
clear;
close;
// Given data
a = 2.814;// in Å
l = 0;
h = l;
k = 0;
//d= a/(sqrt(h^2+k^2+l^2)), So
d=a;// in Å
n = 2;
lembda = 0.710;// in Å
theta = asind(n*lembda/(2*d));
disp(theta,"The glancing angle for a cubic in degree is :"); 
