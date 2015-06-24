// Exa 3.24
format('v',7);clc;clear;close;
// Given data
Im =25;//current in mA
Im = Im * 10^-3;// in A
Rm = 10;//resistance in ohm
I = 20;// in A
Rsh = (Im*Rm)/(I-Im);//shunt resistance in ohm
disp(Rsh,"The value of Rsh in Ω is");
V = 120;// in V
Rs = (V/Im)-Rm;// in ohm
disp(Rs,"The value of Rs in Ω is");
