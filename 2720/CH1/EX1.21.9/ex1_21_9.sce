// Exa 1.21.9
clc;
clear;
close;
// Given data
n = 1;
lembda = 1.54;// in Å
theta = 21.7;// in degree
//Formula 2*d*sin(theta) = n*lembda;
d = (lembda*n)/(2*sind(theta));// in Å
h = 1;
k = 1;
l = 1;
// Formula d = a/(sqrt( ((h)^2) + ((k)^2) + ((l)^2) ));
a =  d*(sqrt( ((h)^2) + ((k)^2) + ((l)^2) ));// in Å
disp(a,"Lattice constant in Å is");
