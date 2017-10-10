// Exa 5.3
clc;
clear;
close;
// Given data
Bita= 5/100;
f_H= 50;// in kHz
f_H= f_H*10^3;// in Hz
f_L= 50;// in kHz
Amid= 1000;
f_LF= f_L/(1+Bita*Amid);// in Hz
f_HF= f_H*(1+Bita*Amid);// in Hz
disp(f_LF,"Value of f_LF in Hz is : ")
disp(f_HF*10^-6,"Value of f_LF in MHz is : ")
