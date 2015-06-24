// Exa 2.6.1
clc;
clear;
close;
// Given data
lembda = 11000;// in Å
lembda = lembda * 10^-10;// in m
h = 6.625*10^-34;
c = 3*10^8;// in m/s
e = 1.6*10^-19;// in C
E_g = (h*c)/(lembda*e);// in eV
disp(E_g,"The energy gap in eV is");

// Note: In the book, there is calculation error to evaluate the value of Eg, so the answer in the book is wrong and the answer of coding is correct.
