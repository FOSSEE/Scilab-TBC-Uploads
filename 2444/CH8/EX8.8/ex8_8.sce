// Exa 8.8
clc;
clear;
close;
format('v',5)
// Given data
Z_L = 10;// in ohm
Z_desh_L = 1;// in k ohm
Z_desh_L = Z_desh_L * 10^3;// in ohm
Zs = Z_desh_L;// in ohm
// a = N1/N2 = sqrt(Z_desh_L/Z_L);
a = sqrt(Z_desh_L/Z_L);//turn ratio of the transformer 
disp(a,"The turn ratio of the transformer is");
