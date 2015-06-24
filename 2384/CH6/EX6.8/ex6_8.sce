// Exa 6.8
clc;
clear;
close;
format('v',6)
// Given data
Rm = 50;// in ohm
Im = 10;// in mA
Im = Im * 10^-3;// in A
V = 100;// in V
Rs = (V/Im)-Rm;// in ohm
disp(Rs,"The value of Rs in Ω is");
N = 1/Im;
Rsh = Rm/(N-1);// in ohm
disp(Rsh,"The value of Rsh in Ω is");
