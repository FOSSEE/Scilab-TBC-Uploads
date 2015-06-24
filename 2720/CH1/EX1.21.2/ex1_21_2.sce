// Exa 1.21.2
clc;
clear;
close;
// Given data
lembda = 1.6;// in Å
lembda = lembda * 10^-10;// in m
theta = 14.2;// in degree
n = 1;
//Formula 2*d*sin(theta) = n*lembda;
d = (n*lembda)/(2*sind(theta));// in m
d = d * 10^10;// in Å
disp(d,"The spacing of atomic layer in the crystal in Å is");
