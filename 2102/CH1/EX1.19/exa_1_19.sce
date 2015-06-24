// Exa 1.19
clc;
clear;
close;
// Given data
ni= 2.25*10^13;// in /cm^3
e= 1.6*10^-19;// in C
miu_n= 3800;// in cm^2/vs
miu_p= 1800;// in cm^2/vs
no=ni;
sigma= no*e*(miu_n+miu_p);// in s/cm
disp(sigma,"The intrinsic conductivity in s/cm is :")

// Note: Answer in the book is wrong due to calculation error to evaluating the value of sigma
