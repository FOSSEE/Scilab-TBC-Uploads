// Exa 3.29
format('v',7);clc;clear;close;
// Given data
Rm = 100;//meter resistance in ohm
Im = 2;//current in mA
Im = Im * 10^-3;// in A
I = 150;// in mA
I = I * 10^-3;// in A
m = I/Im;
Rsh = Rm/(m-1);//required shunt resistance in ohm
disp(Rsh,"The value of required shunt resistance in Ω is");
Pm = ((Im)^2)*Rm;// in W 
Psh = ((I-Im)^2)*Rsh;// in W
P = Pm+Psh;//power consumption  in W
P = P * 10^3;// in mW
disp(P,"The power consumption in mW is");
