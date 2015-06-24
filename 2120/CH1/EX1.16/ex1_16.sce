// Exa 1.16
clc;
clear;
close;
// Given data
g=9.81;// in m/s^2
P=1.0332*10^5;// in kN/m^2
v='(2.3*10^4/p)^1/1.4';// given expression
H= 1/g*(2.3*10^4)^(1/1.4)*integrate('(1/p)^(1/1.4)','p',0,P);// in m
disp(H*10^-3,"The value of H in km is : ")

// Note: There is the calculation error in the book in this question, so the answer in the book is wrong.
