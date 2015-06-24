// Exa 4.14
clc;
clear;
close;
// Given data
lamda= 800;// in nm
EpIn_eV= 1248/lamda;// in eV
h_int= 5/100;
I=50;// in mA
P= h_int*EpIn_eV*I;// in mW
disp(P,"Power radiated by an LED in mW is : ")
