// Exa 6.3
clc;
clear;
close;
format('v',7)
// Given data
Rm = 5;// in ohm
Im = 15;// in mA
Im = Im * 10^-3;// in A
I = 1;// in A
N = I/Im;// multiplying factor
Rsh = Rm/(N-1);// in ohm
disp(Rsh,"The resiatnce to be connected in parallel in Ω is");
V = 10;// in V
Rs = (V/Im)-Rm;// in ohm
disp(Rs,"The resiatnce to be connected in series in Ω is");
