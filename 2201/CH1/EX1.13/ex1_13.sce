// Exa 1.13
clc;
clear;
close;
// Given data
n = 1;
lembda = 1.54;// in Å
theta = 21.7;// in degree
d = lembda/(2*sind(theta));// in Å
h = 1;
k = h;
l = k;
a = d*sqrt(h^2+k^2+l^2);// in Å
disp(a,"Lattice constant in Å is");
