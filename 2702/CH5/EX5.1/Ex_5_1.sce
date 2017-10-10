// Exa 5.1
clc;
clear;
close;
// Given data
A= 800;// unit less
Af= 50;// unit less
// Formula Af= A/(1+Bita*A)
Bita= 1/Af-1/A;
disp(Bita*100,"Percentage of output which is feedback to the input in % is  ")
