// Exa 6.6
format('v',6)
clc;
clear;
close;
// Given data
f_L = 20;// in Hz
f_H = 50;// in kHz
f_H = f_H * 10^3;// in Hz
Ao = 1000;
B = 10/100;
f_HF =f_H*(1+(B*Ao));// in Hz
f_HF = f_HF * 10^-6;// in MHz
disp(f_HF,"The value of f_HF in MHz is");
f_LF = f_L/(1+(B*Ao));// in Hz
disp(f_LF,"The value of f_LF in Hz is");
