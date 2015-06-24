// Exa 5.23
clc;
clear;
close;
// Given data
f_L = 200;// in Hz
f_H = 1;// in kHz
f_H = f_H * 10^3;// in Hz
f_c = sqrt(f_H*f_L);// in Hz
disp(f_c,"The center frequency in Hz is");
Q = f_c/(f_H-f_L);
disp(Q,"Quality factor is");
