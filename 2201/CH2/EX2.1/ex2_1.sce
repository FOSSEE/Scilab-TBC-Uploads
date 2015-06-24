// Exa 2.1
clc;
clear;
close;
// Given data
lembda = 11000;// in Å
lembda = lembda * 10^-10;
h = 6.625*10^-34;
c = 3*10^8;
q = 1.6*10^-19;// in C
E_g = h*c/lembda;// in J
E_g= E_g/q;// in eV
disp(E_g,"The energy gap in Si in eV is");

// Note: The answer in the book is not correct 
