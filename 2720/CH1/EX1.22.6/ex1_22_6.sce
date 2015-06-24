// Exa 1.22.6
clc;
clear;
close;
// Given data
d = 5.2;// in gm/cc
n = 2;
M = 120;
N_A = 6.023*10^23;
m = M/N_A;//mass of 1 atom in gm
m = n*m;//mass of unit cell in gm
g = 20;// in gm
m = g/m;// in unit cells
disp(m,"The number of unit cell in its 20 gm is : ");


