// Exa 12.3
clc;
clear;
close;
// Given data
n = 8;
Resolution = 20;// in mV/LSB
digital_input= '10000000';// in binary
D= bin2dec(digital_input);// in decimal
Resolution=Resolution*10^-3;// in V/LSB
V_OFS = Resolution * ((2^n)-1);// in V
disp(V_OFS,"The value of V_OFS in V is");
V_out = Resolution*D;// in V
disp(V_out,"The value of V_out in V is");
