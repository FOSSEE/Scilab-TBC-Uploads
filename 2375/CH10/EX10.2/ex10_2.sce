// Exa 10.2
clc;
clear;
close;
format('v',6)
// Given data
A = 1000;
Zi = 1;// in k ohm
Zi = Zi * 10^3;// in ohm
Beta = 0.01;
Zdesh_i = (1+A*Beta)*Zi;// in ohm
Zdesh_i =Zdesh_i *10^-3;// in k ohm
disp(Zdesh_i,"The input impedance of the feedback amplifier in k ohm is");
