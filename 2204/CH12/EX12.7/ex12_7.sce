// Exa 12.7
clc;
clear;
close;
// Given data
V_i = 5.1;// in V
n = 8;
Re = 2^n;
Resolution = V_i/(2^n-1);// in V/LSB
disp(Resolution*10^3,"The Resolution in mV/LSB is");
// When
V_i = 1.28;// in V
D = round(V_i/Resolution);
D_in_binary= dec2bin(D);// in binary
disp(D_in_binary,"The digital output is :")

