// Exa 5.23
clc;
clear;
close;
format('v',6)
// Given data
A = 400;
Beta = 0.01;
// The gain with feedback
Af =A/(1+(A*Beta));
disp(Af,"The gain with feedback is");
f_L = 200;// in Hz
// The Lower cut-off frequency with feedback 
f_LF = f_L/(1+(A*Beta));// in Hz
disp(f_LF,"The Lower cut-off frequency with feedback in Hz is");
f_H = 40;// in kHz
f_H = f_H * 10^3;// in Hz
// The Upper cut-off frequency with feedback 
f_HF = f_H*(1+(A*Beta));// in Hz
f_HF=f_HF*10^-3;// in k Hz
disp(f_HF,"The Upper cut-off frequency with feedback in kHz is");

// Note: In the book, there is calculation error to find the value of gain with feedback i.e. Af, so the answer in the book is wrong.
