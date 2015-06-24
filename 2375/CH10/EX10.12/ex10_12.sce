// Exa 10.12
clc;
clear;
close;
format('v',5)
// Given data
Ao = 100;
f_L = 20;// in Hz
f_H = 40;// in kHz
f_H = f_H*10^3;// in Hz
Beta = 0.1;
Af = Ao/(1 + (Beta*Ao));
disp(Af,"The overall gain at mid frequency is");
f_Hf = f_H*(1+(Ao*Beta));// in Hz
f_Hf = f_Hf * 10^-3;// in kHz
disp(f_Hf,"The upper cutoff frequency with negative feedback in kHz is");
f_Lf = f_L/(1+(Ao*Beta));// in Hz
disp(f_Lf,"The lower cutoff frequency with negative feedback in Hz is");

// Note: The calculated value of lower cutoff frequency with negative feedback i.e f_Lf is wrong. So the answer in the book is wrong.
