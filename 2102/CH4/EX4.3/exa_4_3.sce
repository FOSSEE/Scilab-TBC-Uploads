// Exa 4.3
clc;
clear;
close;
// Given data
lamda= 670;// in nm
h_int= 1/100;
EpIn_eV= 1248/lamda;// in eV
I=50;// in mA
P= h_int*EpIn_eV*I;// in mW
disp(P,"Power radiated by an LED in mW is : ")

// Note : There is a calculation error in evaluating the value of P so the answer in the book is wrong
