// Exa 6.1
clc;
clear;
close;
format('v',6)
// Given data
Rm = 8;// in ohm
Im = 20;// in mA
Im = Im * 10^-3;// in A
I = 1;// in A
// Multiplying factor
N = I/Im;
// Shunt resistance
Rsh = Rm/(N-1);// in ohm
disp(Rsh,"The shunt resistance required in Ω is");
