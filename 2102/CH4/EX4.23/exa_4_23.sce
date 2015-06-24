// Exa 4.23
clc;
clear;
close;
// Given data
lamda= 600;// in nm
h_int= 4/100;
EpIn_eV= 1248/lamda;// in eV
I=50;// in mA
P= h_int*EpIn_eV*I;// in mW
disp(P,"Power radiated by an LED in mW is : ")
