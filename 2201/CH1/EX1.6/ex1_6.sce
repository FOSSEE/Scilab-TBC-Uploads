// Exa 1.6
clc;
clear;
close;
// Given data
lembda = 1.6;// in Å
theta = 14.2;// in degree
n = 1;
d = (n*lembda)/(2*sind(theta));// in Å
disp(d,"The spacing of atomic layer in crystal in Å is");

// Note: The unit of the answer in the book is wrong.
