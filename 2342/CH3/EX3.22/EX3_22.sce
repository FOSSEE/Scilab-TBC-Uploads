//Exa 3.22
format('v',6)
clc;
clear;
close;
// Given data
h = 6.64 * 10^-34;// in J-s
e= 1.6*10^-19;// electron charge in C
c= 3 * 10^8;// in m/s
lembda = 0.87;// in µm
lembda = lembda * 10^-6;// in m
E_g = (h * c)/lembda;// in J-s
E_g= E_g/e;// in eV
disp(E_g,"The band gap of the material in eV is");
