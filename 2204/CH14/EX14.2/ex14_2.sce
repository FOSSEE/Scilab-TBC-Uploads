// Exa 14.2
clc;
clear;
close;
// Given data
f_out_max = 200;// in kHz
f_out_min = 4;// in Hz
f_CLK = 2.2*f_out_max;// in kHz
disp(f_CLK,"Frequency of reference oscillation in kHz is");
f_CLK= f_CLK*10^3;// in Hz
// Formula f_out_min= f_CLK/2^n
n=log(f_CLK/f_out_min)/log(2);
disp(round(n),"The number of bits required in the phase accumulator is : ")
