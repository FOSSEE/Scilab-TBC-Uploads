//EXAMPLE 6.4
//Z-Transform 
clc;
clear;
syms n z;
x = (-0.6)^n;
X = nusum(x*((1/z)^n),n,0,%inf);
limit(X);
disp(X,' X = ');

