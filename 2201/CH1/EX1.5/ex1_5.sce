// Exa 1.5
clc;
clear;
close;
// Given data
d = 2.82;// in Å
d = d * 10^-10;// in m
n = 1;
theta1 = 10;// in degree
lembda = 2*d*sind(theta1);// in m
lembda = lembda  * 10^10;// in Å
disp(lembda,"Wavaelength of X ray in Å is");
