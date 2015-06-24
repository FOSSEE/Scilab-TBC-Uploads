// Exa 1.7
clc;
clear;
close;
// Given data
n = 1;
theta1 = 30;// in degree
lembda = 1.78;// in Å
d = (n*lembda)/(2*sind(theta1));// in Å
disp(d,"The interplanner spacing in Å is");
