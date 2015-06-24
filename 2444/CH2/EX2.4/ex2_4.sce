// Exa 2.4
clc;
clear;
close;
format('v',5)
// Given data
lembda = 1.539;// in angstrum
theta = 22.5;// in degree
n = 1; // first order
// n*lembda = 2*d*sind(theta);
d = lembda/(2*sind(theta));// in angstrum
disp(d,"The interplaner distance in angstrum is");
