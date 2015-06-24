// Exa 8.7
clc;
clear;
close;
format('v',5)
// Given data
Z_L = 16;// in ohm
Z_desh_L = 10;// in k ohm
Z_desh_L = Z_desh_L* 10^3;// in ohm
// a = N1/N2 = sqrt( ZdasL/Z_L );
a = sqrt( Z_desh_L/Z_L );// ratio of primary to secondary turns of step-down transformer
disp(a,"The transformer turm ratio is");
